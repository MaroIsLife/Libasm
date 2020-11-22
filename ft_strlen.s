section .text
		global _ft_strlen
_ft_strlen:
		mov rax,0   				; i = 0;
		jmp check					; goto check

check:
	cmp byte [rdi + rax],0 			; if dst[i] != 0
	jne incr			   			; goto incr if dst[i] != 0
	ret								; return(i)

incr:
	inc rax							; i++
	jmp check						; goto check