.section        __TEXT,__text,regular,pure_instructions
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
            movl    $0, -4(%rbp)
    pushq $1
    popq %rax
    pushq %rax
lbl0:
    //offset 1
    movq -24(%rbp), %rax
    pushq %rax
    pushq $6
    popq %rax
    popq %rbx
    cmp %rbx, %rax
    jle lbl1
    //offset 1
    movq -24(%rbp), %rax
    pushq %rax
    popq %rax
    movq %rax, -40(%rbp)
call	plus5
jmp lbl2
plus5:
    //offset 3
    movq -40(%rbp), %rax
    pushq %rax
    pushq $5
   popq %rax
   popq %rbx
    add %rax, %rbx
   pushq %rbx
    popq %rax
    retq 
lbl2: 
pushq	%rax
    popq %rax
    movq %rax, -24(%rbp)
    jmp lbl0
lbl1:
LBB1_3:
        popq %rdi
        callq _print
        movl $1, %eax
        addq $16, %rsp
        popq %rbp
        retq
    .cfi_endproc

    .section        __TEXT,__cstring,cstring_literals
  L_.str:                                 ## @.str
          .asciz  "%d\n"

  .subsections_via_symbols
  