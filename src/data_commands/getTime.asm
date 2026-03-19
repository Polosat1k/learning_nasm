global getTime

section .data
    currentT dq 0
    msg db "pass"
    fd db 1

section .text
getTime:
    mov rax, 0xc9
    mov rdi, currentT
    ;int 0x80
    syscall

    mov rdx, [rel currentT]
    add rdx, 5

timeloop:
    mov rax, 0xc9
    mov rdi, currentT
    syscall
    cmp qword [rel currentT], rdx
    jb timeloop
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 8
    syscall

exit:
    mov rdi, 22
    mov rax, 60
    syscall