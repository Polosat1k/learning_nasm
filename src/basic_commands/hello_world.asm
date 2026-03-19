global hello_world

section .data
    message db "Hello world", 10

section .text
hello_world:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, 19
    syscall

    mov rax, 60
    syscall