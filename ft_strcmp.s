section .text
        global _ft_strcmp

_ft_strcmp:
        mov rax,0                       ; i = 0;
        
compare:
    mov cl, BYTE [rdi + rax]            ; cl = s1[i];
    mov dl, BYTE [rsi + rax]            ; dl = s2[i];
    cmp cl,0                            ; if cl == 0 goto return_true
    je return_true
    cmp dl,0                            ; if dl == 0 goto return_true
    je return_true
    cmp cl,dl                           ; if cl == dl goto incr
    je incr                             
    jmp return_true

incr:
    inc rax                             ; i++
    jmp compare                         ; goto compare

return_true:
        movzx rax,cl                    ; i = cl
        movzx r8, dl                    ; r8 = cl
        sub rax,r8                      ; rax = rax - r8
        ret                             ; return (i)