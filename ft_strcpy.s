section .text
        global _ft_strcpy
_ft_strcpy:
        mov rax,0                       ; i = 0

copy:
    mov bh, BYTE [rsi + rax]            ; bh = src[i]
    mov BYTE [rdi + rax], bh            ; dst[i] = bh
    cmp bh,0                            ; if bh == 0
    je return
    jmp plus                            ; else goto plus

plus:   
    inc rax                             ; i++;
    jmp copy                            ; goto copy

return:
    mov rax,rdi                         ; return value = dst
    ret                                 ; return