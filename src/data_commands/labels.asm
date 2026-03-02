global labels

section .data
    mybyte db 555                     ;   (1 byte)
    myword dw "some"                     ;   (2 byte)
    mydword dd "some text"                ;   (4 byte)
    myqword dq "some text must be there"    ;   (8 byte)

section .text
labels:
    mov rax, 1
    mov rdi, 1
    mov rsi, mydword
    mov rdx, 19
    syscall
