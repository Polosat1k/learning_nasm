global adding

section .text
adding:
    mov rdi, 5
    mov rsi, 4
    add rdi, 2656  

    mov rdi, 5
    mov rsi, 6
    sub rdi, rsi

    mov rdi, 23
    inc rdi
    dec rdi
exit:
    mov rdi, 3
    mov rax, 60
    syscall
