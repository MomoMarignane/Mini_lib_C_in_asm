global strcmp
    strcmp:
        cmp         rsi, 0
        je          true
        cmp         rsi, rdi
        je          strcmp
        jmp         false

    true:
        sub         rsi, rdi
        mov         rax, rsi
        ret

    false:
        xor         rax, rax
        ret