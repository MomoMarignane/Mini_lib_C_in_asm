global strlen
    strlen:
        mov         rcx, 0

    loop:
        cmp         byte [rdi], 0
        je          return
        inc         rcx
        inc         rdi
        jnz         loop

    return:
        mov         rax, rcx
        ret