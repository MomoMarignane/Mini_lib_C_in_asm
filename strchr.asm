BITS 64

global strchr;
    strchr:
        mov rax, rdi
        mov rax, rsi

    .loop:
        cmp byte [rdi], al
        je .true
        cmp byte [rdi], 0
        je .false
        inc rdi
        jmp .loop

    .true:
        mov rax, rdi
        ret

    .false:
        xor rax, rax
        ret