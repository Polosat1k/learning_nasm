global foo1
global foo1_2

extern printf

section .data 
message db "hello world", 10

section .text
foo1:
	sub rsp, 8
	mov rdi, message
	call printf
	add rsp, 8
	ret

foo1_2:
	mov rax, 5
	ret

