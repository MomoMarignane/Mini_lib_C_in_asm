BITS 64

global memcpy
    .memcpy:
        mov         rax, rdi
        jmp         .loop

    .loop:
        mov         rax, rsi
        inc         rsi
        cmp         rsi, 0
        je          .return
        jmp         .loop

    .return:
        ret

