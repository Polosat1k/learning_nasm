global labels

section .data
    mybyte db 555                   ;(1 byte)
    myword dw 555                   ;(2 byte)
    mydword dd 555                  ;(4 byte)
    myqword dq 555                  ;(8 byte)

section .text
labels:
    mov rax, 10
    mov [rel mybyte], rax
    mov rdi, mybyte
    mov rax, 60 
    syscall
