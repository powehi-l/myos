; nasm -f elf kernel.asm -o kernel.o
; ld -s kernel.o -o kernel

SELECTOR_KERNEL_CS equ 8

extern cstart

extern gdt_ptr

[SECTION .bss]
StackSpace  resb 2*1024
StackTop:

[section .text]

global _start

_start:
    xchg bx, bx
    mov esp, StackTop

    sgdt [gdt_ptr]
    call cstart
    lgdt [gdt_ptr]

    jmp SELECTOR_KERNEL_CS:csinit

csinit:
    push 0
    popfd

    hlt
