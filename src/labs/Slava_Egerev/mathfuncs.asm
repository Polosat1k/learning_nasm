			section .text
			
			global	f1				; a=rdi, b=rsi, c=rdx, d=rcx
f1			mov 	rax, 0
			mov 	rax, rdi
			add		rax, rsi		; a+b
			imul	rax, rax		; (a+b)^2
			mov		r8, rdx	
			add 	r8, rcx			; c+d
			imul	r8, r8			; (c+d)^2
			mov		r9, rdi
			imul	r9, rsi			; a*b
			imul	r9, 2			; 2*a*b
			add		rax, r8			; (a+b)^2+(c+d)^2
			sub		rax, r9			; (a+b)^2+(c+d)^2-2*a*b
			ret