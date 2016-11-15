open Interpreter
open Ast
open Printf
open Buffer

let sp = ref 0
let lbbl_ctr = ref 0
let labels = ref ""

let code = Buffer.create 100

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
  "    popq %rbx\n" ^
  "    pushq %rax\n"
  |> Buffer.add_string code

let codegenx86_st n =
  "    pushq $" ^ (string_of_int n) ^ "\n"
  |> Buffer.add_string code

let codegenx86_asg _ =
  "    popq %rax\n" ^
  "    popq %rbx\n" ^
  "    movq %rax, %rbx\n"
  |> Buffer.add_string code

let codegenx86_id addr =
  "    //offset " ^ (string_of_int addr) ^ "\n" ^
  "    movq " ^ (-16  - 8 * addr |> string_of_int) ^ "(%rbp), %rax\n" ^
  "    push %rax\n"
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
    codegenx86 ((x, !sp) :: symt) e2;
    codegenx86_let ()
  (***** Assignment 6 *****)
  | Asg(Identifier x, e) ->
    codegenx86 symt (Identifier x);
    codegenx86 ((x, !sp) :: symt) e;
    codegenx86_asg ()
  | If((Operator(op, e', e'')), e2, e3) ->
    codegenx86 symt e';
    codegenx86 symt e'';
    codegenx86_if op;
    codegenx86 symt e2;
    "jmp LBB1_3\n" ^
    "LBBL_" ^ string_of_int(!lbbl_ctr) ^ ":\n"
    |> Buffer.add_string code;
    lbbl_ctr := !lbbl_ctr + 1;
    codegenx86 symt e3
  | Seq(e1, e2) ->
    codegenx86 symt e1;
    codegenx86 symt e2



let _ =
  Buffer.reset code;
  Buffer.add_string code codegen_prefix;
  lbbl_ctr := 0;
  addr_base := 0;
  codegenx86 []
  (* (Let("x", Const 10, (Let("y", Const 11, Operator(Plus,Identifier "x", Identifier "y"))))); *)
  (If((Operator(Leq, Const 3, Const 5)), Const 3, Const 5));
  Buffer.add_string code codegen_suffix;
  Buffer.output_buffer stdout code;
