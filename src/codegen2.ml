open Interpreter
open Ast
open Printf
open Buffer

let sp = ref 0
let lbbl_ctr = ref 0
let if_ctr   = ref 0
let labels = ref ""

let code = Buffer.create 100
let functions = Hashtbl.create 5

let unwrap_int = function
  | Const x -> x
  | _ -> failwith "Tried to unwrap non-int"

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
        subq $1, %rdi
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
  | Geq    -> "jle LBBL_" ^ string_of_int(!lbbl_ctr)
  | Leq    -> "jge LBBL_" ^ string_of_int(!lbbl_ctr)
  | Equal  -> "je  LBBL_" ^ string_of_int(!lbbl_ctr)
  | Noteq  -> "jne LBBL_" ^ string_of_int(!lbbl_ctr)
  | _ -> "cmp"

let codegenx86_op op =
    "   popq %rax\n" ^
    "   popq %rbx\n" ^
    "    " ^ (string_of_operator op) ^ " %rax, %rbx\n" ^
    "   pushq %rbx\n" |> Buffer.add_string code

let codegenx86_if op =
  "    popq %rax\n" ^
  "    popq %rbx\n" ^
  "    cmp %rax, %rbx\n" ^
  "    " ^ (string_of_operator op) ^ "\n"
   |> Buffer.add_string code

let codegenx86_let _ =
  "    popq %rax\n" ^
  "    pushq %rax\n"
  |> Buffer.add_string code

let codegenx86_st n =
  "    pushq $" ^ (string_of_int n) ^ "\n"
  |> Buffer.add_string code

let codegenx86_asg addr =
  "    popq %rax\n" ^
  "    movq %rax, " ^ (-16 - 8 * addr |> string_of_int) ^ "(%rbp)\n" ^
  "    pushq %rax\n"
  |> Buffer.add_string code

let codegenx86_id addr =
  "    //offset " ^ (string_of_int addr) ^ "\n" ^
  "    movq " ^ (-16  - 8 * addr |> string_of_int) ^ "(%rbp), %rax\n" ^
  "    pushq %rax\n"
  |> Buffer.add_string code


let rec codegenx86 symt = function
  | Operator (op, e1, e2) ->
    codegenx86 symt e1;
    codegenx86 symt e2;
    codegenx86_op op;
    sp := !sp - 1
  | Identifier x ->
    let addr = lookup x symt in
    codegenx86_id (addr);
    sp := !sp + 1
  | Const n ->
    codegenx86_st n;
    sp := !sp + 1
  | Let(x, e1, e2) ->
    codegenx86 symt e1;
    codegenx86_let ();
    codegenx86 ((x, !sp) :: symt) e2
  (***** Assignment 6 *****)
  | Asg(Identifier x, e) ->
    let addr = lookup x symt in
    codegenx86 symt e;
    codegenx86_asg addr
  | If((Operator(op, e', e'')), e2, e3) ->
    codegenx86 symt e';
    codegenx86 symt e'';
    codegenx86_if op;
    codegenx86 symt e2;
    "jmp LBB1_3\n" ^
    "LBBL_" ^ string_of_int(!lbbl_ctr) ^ ":\n"
    |> Buffer.add_string code;
    lbbl_ctr := !lbbl_ctr + 1;
    codegenx86 symt e3;
    "jmp LBB1_3\n" |> Buffer.add_string code
  | Seq(e1, e2) ->
    codegenx86 symt e1;
    codegenx86 symt e2
  | While((Operator(op, e', e'')), e2) ->
    codegenx86 symt e';
    codegenx86 symt e'';
    codegenx86_if op;
    codegenx86 symt e2;
    "LBBL_" ^ string_of_int(!lbbl_ctr) ^ ":\n" |> Buffer.add_string code;
    lbbl_ctr := !lbbl_ctr + 1
  | Application(Identifier f, e) ->
    let Fundef(name, params, body) = Hashtbl.find functions f in
    let arg = List.hd e in
    "pushq $" ^ string_of_int(unwrap_int(arg)) ^ "\n" ^ (* push arg onto stack *)
    "pushq %rbp\n" ^ (* push instruction pointer *)
    "jmp " ^ f ^ "\n" |> Buffer.add_string code;
    codegenx86_fundef (Fundef(name,params,body))
  | _ -> failwith "Not implemented"
and codegenx86_fundef = function
  | Fundef(n,p,b) ->
    if (n = "main")
    then codegenx86 [] b
    else
      (n ^ ":\n" |> Buffer.add_string code;
      codegenx86 [] b;
      "popq %rax\n" ^
      "retq \n"
      |> Buffer.add_string code )


let rec add_functions = function
    | [] -> ()
    | (Fundef(name,params,body))::xs ->
    Hashtbl.add functions name (Fundef (name, params, body));
    add_functions xs

let rec codegenx86_prog = function
  | [] -> codegen_prefix ^ Buffer.contents code ^ codegen_suffix
  | x::xs -> add_functions(x::xs);
    match x with
      | Fundef(n,p,b) -> (codegenx86_fundef (Fundef(n,p,b))); codegenx86_prog xs
