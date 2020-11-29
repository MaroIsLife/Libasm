section .text
        global _ft_strdup

_ft_strdup:
        mov rdx,0
        jmp count

count:
    cmp byte [rdi + rdx],0     
    jnz count_incr
    inc rdx
    jmp alloc

count_incr:
    inc rdx     ; i++;
    jmp count   ; goto count

error_null:
    mov rax,0
    ret

alloc:
    push rdi
    mov rdi,rdx
    extern _malloc
    call _malloc
    pop rdi
    cmp rax,0
    je error_null
    mov rdx,0
    jmp copy

copy:
    mov bh, byte [rdi + rdx]
    mov byte [rax + rdx],bh
    cmp bh,0
    je return
    jmp copy_incr

copy_incr:
        inc rdx
        jmp copy

return:
    ret
