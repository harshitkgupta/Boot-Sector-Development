print_string:
    pusha
    mov ah, 0x0e

    loop:
        mov al, [bX]
        cmp al, 0
        je return
        int 0x10
        inc bx
        jmp loop

    return:
        popa
        ret
