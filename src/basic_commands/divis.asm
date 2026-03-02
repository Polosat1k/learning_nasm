global divis

divis:
    mov rdx, 0
    mov eax, 500
    mov di, 6
    div di

    mov rax, 60
    syscall