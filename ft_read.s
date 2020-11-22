section .text
        global _ft_read

_ft_read:
       	mov rax, 0x2000003              ; give Rax write ID
	syscall                         ; call Write
	jnc return                      ; If carry flag wasn't signed return normally
	push rax                        ; store rax's value on top of the stack
	extern ___error                 ; include error header
	call ___error                   ; takes erno's address
	pop r10                         ; move the pushed value into a temporary register "r10"
    mov [rax],r10                   ; store the pushed value in rax's memory address which the return value of errno
	mov rax, -1                     ; give rax the -1 value
        
return:
        ret