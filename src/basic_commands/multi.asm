global multi

multi:
    mov rdx, 0
    mov rdi, 10000000
    mov rax, 10000000
    mul rdi

    mov rax, 60
    syscall