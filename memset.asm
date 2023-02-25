BITS 64

global memset
    .memset:
        mov         rax, rdi
        mov         rcx, rdx
        jmp         .loop

    .loop:
        cmp         rcx, 0
        je          .return
        dec         rcx
        mov         [rax], sil
        jmp         .loop

    .return:
        ret
