; nasm -f eld foo.asm -o foo.o
; gcc -c bar.c -o bar.o
; ld -s hello.o bar.o -o foobar
; ./foobar

extern choose ;int choose(int a, int b)

[SECTION .data]

num1st dd 3
num2nd dd 4

[SECTION .text]
global _start
global myprint ;for bar.c to use

_start:
    push dword [num2nd]
    push dword [num1st]

    call choose
    add esp, 8

    mov ebx, 0
    mov eax, 1
    int 0x80

myprint:
    mov edx, [esp + 8]
    mov ecx, [esp + 4]
    mov ebx, 1
    mov eax, 4
    int 0x80
    ret
