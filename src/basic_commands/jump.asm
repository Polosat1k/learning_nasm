global jump
 
section .text

equals_first:
    mov al, 150
    mov bl, 45
    jmp jumpc
equals_second:
    mov al, -30
    mov bl, 1
    jmp jumpc
equals_third:
    mov al, 10
    mov bl, 10
    jmp jumpc

jump:
    jmp equals_first
jumpc:
    cmp al, bl
    jg if_bigger
    jl if_lowwer
    je if_equal
    jmp exit

if_bigger:
    mov rdi, -1
    jmp exit
if_equal:
    mov rdi, 0
    jmp exit
if_lowwer:
    mov rdi, 1
    jmp exit

exit:    
    mov rdi, 24           
    mov rax, 60
    syscall