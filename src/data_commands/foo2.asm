global foo2

extern printf

section .data
message db "%s tell %s what %s cost is %u$", 10, 0
name1 db "Olya", 0
name2 db "Petya", 0
item db "Milk", 0
cost db 10

;	printf(message, name1, name2, item, cost);

section .text
foo2:
	sub rsp, 8
	mov rdi, message
	mov rsi, name1
	mov rdx, name2
	mov rcx, item
	mov r8, [cost]
	mov rax, 0
	call printf
	add rsp, 8
	ret
