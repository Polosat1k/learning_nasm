global array
global array_rsi

section .data
    nums dq 12, 13, 14, 15, 16

section .text
array:
    movzx edi, word [rel nums + 2]
;    jmp exit

array_rsi:
    mov rbx, nums
    mov rsi, 2
    mov rdi, [rbx + rsi * 8]
;    jmp exit

exit:
    mov rax, 60
    ret
