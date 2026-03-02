global asm_main
 
section .text
asm_main:
    mov al, 255
    add al, 3       
    jc carry_set    
    mov rdi, 2      
    jmp exit
carry_set:          
    mov rdi, 2     
exit:               
    mov rax, 60
    syscall