global foo3

section .data
set0 db 0, 0, 0, 0
set1 db 1, 1, 1, 1

section .text
foo3:
	;mov rax, rdi
	;add rax, rsi
	;ret



	;addsd xmm0, xmm1
	;subsd xmm0, xmm1
	;mulsd xmm0, xmm1
	;divsd xmm0, xmm1
	cmpsd xmm0, xmm1, 0
	pmovmskb eax, xmm0
	ret
	;je ret1
	;jmp ret0

ret1:
	mov rax, 1
	movq xmm0, rax
	ret
ret0:
	mov rax, 0
	movq xmm0, rax
	ret
