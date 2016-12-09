open Interpreter
open Ast
open Printf
open Buffer

let sp = ref 0
let lbl_ctr = ref 0

let code = Buffer.create 100
let functions = Hashtbl.create 5

let label() = lbl_ctr := !lbl_ctr + 1; (!lbl_ctr - 1)

let unwrap_int = function
  | Const x -> x
  | _ -> failwith "Tried to unwrap non-int"

let num_to_reg = function
  	| 0 -> "%rdi"
  	| 1 -> "%rsi"
  	| 2 -> "%rdx"
  	| 3 -> "%rcx"
  	| _ -> failwith "arg_reg"

let rec remove item = function
  | [] -> []
  | ((x,y)::xs) ->
    if x = item
    then xs
    else (x,y)::(remove item xs)

let rec replace item n = function
  | [] -> []
  | ((x,y)::xs) ->
    if x = item
    then (x,n)::xs
    else (x,y)::(replace item n xs)

let codegen_prefix =
  ".section        __TEXT,__text,regular,pure_instructions
        .macosx_version_min 10, 12
        .globl  _print
        .align  4, 0x90
    _print:                                 ## @print
            .cfi_startproc
    ## BB#0:
            pushq   %rbp
    Ltmp0:
            .cfi_def_cfa_offset 16
    Ltmp1:
            .cfi_offset %rbp, -16
            movq    %rsp, %rbp
    Ltmp2:
            .cfi_def_cfa_register %rbp
            subq    $16, %rsp
            leaq    L_.str(%rip), %rax
            movl    %edi, -4(%rbp)
            movl    -4(%rbp), %esi
            movq    %rax, %rdi
            movb    $0, %al
            callq   _printf
            xorl    %edi, %edi
            movl    %eax, -8(%rbp)          ## 4-byte Spill
            callq   _exit
            .cfi_endproc

            .globl  _main
        .align  4, 0x90
    _main:                                  ## @main
            .cfi_startproc
    ## BB#0:
            pushq   %rbp
    Ltmp3:
            .cfi_def_cfa_offset 16
    Ltmp4:
            .cfi_offset %rbp, -16
            movq    %rsp, %rbp
    Ltmp5:
            .cfi_def_cfa_register %rbp
            subq    $16, %rsp
            movl    $0, -4(%rbp)\n"

let codegen_suffix =
    "LBB1_3:
        popq %rdi
        callq _print
        movl $1, %eax
        addq $16, %rsp
        popq %rbp
        retq
    .cfi_endproc

    .section        __TEXT,__cstring,cstring_literals
  L_.str:                                 ## @.str
          .asciz  \"%d\\n\"

  .subsections_via_symbols
  "

let string_of_operator = function
  | Plus -> "add"
  | Minus -> "sub"
  | Times -> "mult"
  | Divide -> "div"
  | Geq    -> "jge"
  | Leq    -> "jle"
  | Equal  -> "je"
  | Noteq  -> "jne"
  | _ -> "cmp"

let codegenx86_op op =
    "   popq %rax\n" ^
    "   popq %rbx\n" ^
    "    " ^ (string_of_operator op) ^ " %rax, %rbx\n" ^
    "   pushq %rbx\n" |> Buffer.add_string code

let codegenx86_id addr =
  "    //offset " ^ (string_of_int addr) ^ "\n" ^
  "    movq " ^ (-16  - 8 * addr |> string_of_int) ^ "(%rbp), %rax\n" ^
  "    pushq %rax\n"
  |> Buffer.add_string code

let codegenx86_while op =
  "    popq %rax\n" ^
  "    popq %rbx\n" ^
  "    cmp %rbx, %rax\n" ^
  "    " ^ (string_of_operator op )
  |> Buffer.add_string code

let codegenx86_let _ =
  "    popq %rax\n" ^
    "    pushq %rax\n"
  |> Buffer.add_string code

let codegenx86_print _ =
  "    popq %rdi\n" ^
  "    callq print\n"
  |> Buffer.add_string code

let codegenx86_new _ =
  "    popq %rax\n" ^
  "    pushq %rax\n"
  |> Buffer.add_string code

let codegenx86_st n =
  "    pushq $" ^ (string_of_int n) ^ "\n"
  |> Buffer.add_string code

let codegenx86_asg addr =
  "    popq %rax\n" ^
  "    movq %rax, " ^ (-16 - 8 * addr |> string_of_int) ^ "(%rbp)\n"
  |> Buffer.add_string code

let rec codegenx86 symt = function
  | Operator (op, e1, e2) ->   (* Plus, 1, 2 *)
    codegenx86 symt e1;
    codegenx86 symt e2;
    codegenx86_op op;
    sp := !sp - 1
  | Array(el) ->
      let size_of_array = (List.length el) in
      let el' = List.rev el in
      for i = 1 to size_of_array do
        let e = List.nth el' (i-1) in
        codegenx86 symt e;
        "    popq %rax\n" ^
        "    movq %rax, " ^ string_of_int (-(!sp * 8) +8) ^ "(%rbp)\n" |> Buffer.add_string code;
      done
  | Printint n ->
    codegenx86 symt n;
    codegenx86_print ()
  | Identifier x ->
    let addr = lookup x symt in
    codegenx86_id (addr);
    sp := !sp + 1
  | ArrayAccess(name, index) ->
    let addr = lookup name symt in
    codegenx86 symt index;
      "    popq %rax\n" ^
      "    movq " ^ ( -(addr * 8)  |> string_of_int) ^ "(%rbp, %rax, 8), %rax\n" ^
      "    pushq %rax\n" |> Buffer.add_string code
  | Const n ->
    codegenx86_st n;
    sp := !sp + 1
  | Let(x, e1, e2) ->
    codegenx86 symt e1;
    codegenx86 ((x, !sp) :: symt) e2;
    codegenx86_let ();
  (***** Assignment 7 *****)
  | New(x, e1, e2) ->
          codegenx86 symt e1;
          codegenx86 ((x, !sp) :: symt) e2;
          codegenx86_new ();
  | Asg(ArrayAccess(name,index), e) ->
    let addr = lookup name symt in
    (match index with
      | Const n ->   codegenx86 symt e;
        "    popq %rax\n" ^
        "    movq %rax, " ^ ((-((addr * 16) - ((n-1) * 16))) |> string_of_int )^ "(%rbp)\n" |> Buffer.add_string code
      | _ -> failwith "Non integer array index provided"
    )
  | Asg(Identifier x, e) ->
    let addr = lookup x symt in
    codegenx86 symt e;
    codegenx86_asg addr
  | If(e1, e2, e3) ->
    let label1 = "LBBL_" ^ string_of_int(label()) in
    let label2 = "LBBL_" ^ string_of_int(label()) in
    let label3 = "LBBL_" ^ string_of_int(label()) in   (* EXAMPLE: *)
                                                       (*    cmp rax rbx    *)
    codegenx86_if symt e1; " " ^ label2 ^ " \n" ^      (*    jle lbl2       *)
    label1 ^ ":\n" |> Buffer.add_string code;          (*    lbl1:          *)
    codegenx86 symt e2;                                (*       expr2       *)
    "    jmp " ^ label3 ^ "\n" ^                       (*       jmp lbl3    *)
    label2 ^ ":\n"  |> Buffer.add_string code;         (*    lbl2:          *)
    codegenx86 symt e3;                                (*       expr3       *)
    "    jmp " ^ label3 ^ "\n"    ^                    (*       jmp lbl3    *)
    label3 ^ ":\n" |> Buffer.add_string code           (*    lbl3:          *)
  | Seq(e1, e2) ->
    codegenx86 symt e1;
    "    popq %rax\n" |> Buffer.add_string code;
    codegenx86 symt e2
  | While(e1, e2) ->
    let label1 = "lbl" ^ string_of_int(label()) in
    let label2 = "lbl" ^ string_of_int(label()) in
    label1 ^ ":\n" |> Buffer.add_string code;          (*    lbl1:          *)
                                                       (*        cmp e' e'' *)
    codegenx86_if symt e1;                             (*        jge lbl2   *)
    " " ^ label2 ^ "\n" |> Buffer.add_string code;
    codegenx86 symt e2;                                (*        expr2      *)
    "    jmp " ^ label1 ^ "\n"  ^                      (*        jmp lbl1   *)
    label2 ^ ":\n" |> Buffer.add_string code           (*    lbl2:          *)
  | For(i, i', e1) ->
      (* lbl1:        *)
      (*    cmp i, i' *)
      (*    jge lbl2  *)
      (*    e1        *)
      (*    jmp lbl1  *)
      (* lbl2:        *)

      let label1 = "lbl" ^ string_of_int(label()) in
      let label2 = "lbl" ^ string_of_int(label())in

      "    pushq $" ^ (string_of_int i) ^ "\n" ^
      label1 ^ ":\n" ^
      "    popq %rax\n" ^
      "    pushq $" ^ (string_of_int i') ^ "\n" ^
      "    popq %rbx\n" ^
      "    cmp %rbx, %rax\n"  ^
      "    jge " ^ label2 ^ "\n" ^
      "    addq $1, %rax\n" ^
      "    pushq %rax\n" |> Buffer.add_string code;

      codegenx86 symt e1;

      "    jmp " ^ label1 ^ "\n" ^
      label2 ^ ":\n" |> Buffer.add_string code


  | Application(e1, params) ->
                          (match e1 with
                            | Identifier v ->
                            let Fundef(name, args, body) = Hashtbl.find functions v in
                            if (List.length params > 0) then (
                              let hd_param = List.hd args in
                              let hd_act   = List.hd params in
                              let addr     = !sp in
                              codegenx86 symt hd_act;
                              "    popq %rax\n" ^
                              "    movq %rax, " ^(-16 - 8 * addr |> string_of_int) ^ "(%rbp)\n" ^
                              "call	" ^ v ^ "\n"|> Buffer.add_string code;
                                                let label1 = label () in
                                                "jmp lbl" ^ string_of_int(label1) ^ "\n" |> Buffer.add_string code;
                                                codegenx86_fundef ((hd_param, addr)::symt) (Fundef(name, args,body));
                                                "lbl" ^ string_of_int(label1) ^ ": \n" |> Buffer.add_string code
                              )
                            else
                                let label1 = string_of_int(label()) in
                                "    call " ^ v  ^ "\n" ^
                                "    jmp lbl" ^ label1 ^ "\n"
                                |> Buffer.add_string code
                                ;
                                codegenx86_fundef symt (Fundef(name,args,body));
                                "lbl" ^ label1 ^ ": \n" |> Buffer.add_string code
                            | _ -> failwith "Application"
                          );
                          "    pushq	%rax\n" |> Buffer.add_string code;
                          sp := !sp + 1
  | Readint -> "    callq _scanf\n" ^
               "    pushq %rdx\n" |> Buffer.add_string code;
  | _ -> failwith "Not implemented"




and codegenx86_fundef symt = function
  | Fundef(n,p,b) ->
    if (n = "main")
    then codegenx86 symt b
    else
      (n ^ ":\n" |> Buffer.add_string code;
      codegenx86 symt b;
      "    popq %rax\n" ^
      "    retq \n"
      |> Buffer.add_string code )



and codegenx86_if symt = function
  | Operator(op, e1, e2) ->
    codegenx86 symt e1;
    codegenx86 symt e2;
    "    popq %rax\n" ^
    "    popq %rbx\n" ^
    "    cmp %rbx, %rax\n" ^
    "    " ^ (string_of_operator op )
     |> Buffer.add_string code
  | exp ->
    codegenx86 symt exp;
    "popq %rax\n" ^
    "cmp $1, %rax\n" ^
    "jne" |> Buffer.add_string code

let rec add_functions = function
    | [] -> ()
    | (Fundef(name,params,body))::xs ->
    Hashtbl.add functions name (Fundef (name, params, body));
    add_functions xs

let rec codegenx86_prog = function
  | [] -> codegen_prefix ^ Buffer.contents code ^ codegen_suffix
  | x::xs -> add_functions(x::xs);
    match x with
      | Fundef(n,p,b) -> (codegenx86_fundef [] (Fundef(n,p,b)));
                         codegen_prefix ^ Buffer.contents code ^ codegen_suffix
