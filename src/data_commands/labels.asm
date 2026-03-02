global labels

section .text
    mybyte db 10                            ;   (1 byte)
    myword dw "some"                        ;   (2 byte)
    mydword dd "some text"                  ;   (4 byte)
    myqword dq "some text must be there"    ;   (8 byte)

    nums db 11, 12, 13, 14, 15, 16

section .data
labels:
    mov r8, nums
    add r8, 0b1
    mov rdi, [rel r8]
    mov rax, 60
    syscall
