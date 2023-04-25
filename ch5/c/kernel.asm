; nasm -f elf kernel.asm -o kernel.o
; ld -s kernel.o -o kernel

[SECTION .text]

global _start

_start:
    mov ah, 0Fh
    mov al, 'K'
    mov [gs:((80 * 1 + 39 ) * 2)], ax
    jmp $
