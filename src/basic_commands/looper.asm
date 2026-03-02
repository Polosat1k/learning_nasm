global looper

looper:
    mov rax, 0
    mov rcx, 10
    jmp mainloop

mainloop:
    add rax, 1
    loop mainloop
    mov rcx, 10

end:
    mov rax, 60
    mov rdi, 25
    syscall