BITS 64;

global myStrlen;
    myStrlen:
        mov rdx, rdi
        mov rcx, 0

    .loop:
        inc rcx
        inc rdx
        cmp byte[rdx], 0
        jnz .loop

    .return:
        mov rax, rcx
        ret