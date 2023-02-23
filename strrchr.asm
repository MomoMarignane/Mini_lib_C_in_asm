BITS 64

global strrchr

    .strrchr:
        mov rdx, rdi
        jmp .upRdx

    .upRdx:
        cmp rdx, 0
        je .loop
        inc rdx
        jmp .upRdx

    .loop:
        dec rdx
        cmp rdx, rsi
        je .true
        cmp rdx, 0
        je .false
        jmp .loop

    .true:
        mov rax, rdx
        ret

    .false:
        xor rax, rax
        ret