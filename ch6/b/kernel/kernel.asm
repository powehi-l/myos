; nasm -f elf kernel.asm -o kernel.o
; ld -s kernel.o -o kernel

%include "sconst.inc"

extern cstart
extern exception_handler
extern spurious_irq
extern kernel_main
extern disp_str

extern gdt_ptr
extern idt_ptr
extern p_proc_ready
extern tss
extern disp_pos

bits 32

[SECTION .data]
clock_int_msg   db "^", 0

[SECTION .bss]
StackSpace  resb 2*1024
StackTop:

[section .text]

global _start

global restart

global divide_error
global single_step_exception
global nmi
global breakpoint_exception
global overflow
global bounds_check
global inval_opcode
global copr_not_available
global double_fault
global copr_seg_overrun
global inval_tss
global segment_not_present
global stack_exception
global general_protection
global page_fault
global copr_error
global  hwint00
global  hwint01
global  hwint02
global  hwint03
global  hwint04
global  hwint05
global  hwint06
global  hwint07
global  hwint08
global  hwint09
global  hwint10
global  hwint11
global  hwint12
global  hwint13
global  hwint14
global  hwint15

_start:
    mov esp, StackTop

    mov dword [disp_pos], 0

    sgdt [gdt_ptr]
    call cstart

    lgdt [gdt_ptr]

    lidt [idt_ptr]

    jmp SELECTOR_KERNEL_CS:csinit

csinit:
;     ud2
;     jmp 0x40:0
;    sti
    xor eax, eax
    mov ax, SELECTOR_TSS
    ltr ax

;    hlt
    jmp kernel_main


; 中断和异常 -- 硬件中断
; ---------------------------------
%macro  hwint_master    1
        push    %1
        call    spurious_irq
        add     esp, 4
        hlt
%endmacro
; ---------------------------------

ALIGN   16
hwint00:                ; Interrupt routine for irq 0 (the clock).
        sub esp, 4
        pushad
        push ds
        push es
        push fs
        push gs

        mov dx, ss
        mov ds, dx
        mov es, dx

        mov esp, StackTop

        inc byte [gs:0]

        mov al, EOI ; enable again
        out INT_M_CTL, al

        push clock_int_msg
        call disp_str
        add esp, 4
        
        mov esp, [p_proc_ready]

        lea eax, [esp + P_STACKTOP]
        mov dword [tss + TSS3_S_SP0], eax

        pop gs
        pop fs
        pop es
        pop ds
        popad

        add esp, 4

        iretd

ALIGN   16
hwint01:                ; Interrupt routine for irq 1 (keyboard)
        hwint_master    1

ALIGN   16
hwint02:                ; Interrupt routine for irq 2 (cascade!)
        hwint_master    2

ALIGN   16
hwint03:                ; Interrupt routine for irq 3 (second serial)
        hwint_master    3

ALIGN   16
hwint04:                ; Interrupt routine for irq 4 (first serial)
        hwint_master    4

ALIGN   16
hwint05:                ; Interrupt routine for irq 5 (XT winchester)
        hwint_master    5

ALIGN   16
hwint06:                ; Interrupt routine for irq 6 (floppy)
        hwint_master    6

ALIGN   16
hwint07:                ; Interrupt routine for irq 7 (printer)
        hwint_master    7

; ---------------------------------
%macro  hwint_slave     1
        push    %1
        call    spurious_irq
        add     esp, 4
        hlt
%endmacro
; ---------------------------------

ALIGN   16
hwint08:                ; Interrupt routine for irq 8 (realtime clock).
        hwint_slave     8

ALIGN   16
hwint09:                ; Interrupt routine for irq 9 (irq 2 redirected)
        hwint_slave     9

ALIGN   16
hwint10:                ; Interrupt routine for irq 10
        hwint_slave     10

ALIGN   16
hwint11:                ; Interrupt routine for irq 11
        hwint_slave     11

ALIGN   16
hwint12:                ; Interrupt routine for irq 12
        hwint_slave     12

ALIGN   16
hwint13:                ; Interrupt routine for irq 13 (FPU exception)
        hwint_slave     13

ALIGN   16
hwint14:                ; Interrupt routine for irq 14 (AT winchester)
        hwint_slave     14

ALIGN   16
hwint15:                ; Interrupt routine for irq 15
        hwint_slave     15

divide_error:
    push 0xFFFFFFFF
    push 0
    jmp exception

single_step_exception:
    push 0xFFFFFFFF
    push 1
    jmp exception

nmi:
    push 0xFFFFFFFF
    push 2
    jmp exception

breakpoint_exception:
    push 0xFFFFFFFF
    push 3
    jmp exception

overflow:
    push 0xFFFFFFFF
    push 4
    jmp exception
    
bounds_check:
    push 0xFFFFFFFF
    push 5
    jmp exception

inval_opcode:
    push 0xFFFFFFFF
    push 6
    jmp exception
copr_not_available:
    push 0xFFFFFFFF
    push 7
    jmp exception
double_fault:
    push 0xFFFFFFFF
    push 8
    jmp exception
copr_seg_overrun:
    push 0xFFFFFFFF
    push 9
    jmp exception
inval_tss:
    push 10
    jmp exception
segment_not_present:
    push 11
    jmp exception
stack_exception:
    push 12
    jmp exception
general_protection:
    push 13
    jmp exception
page_fault:
    push 14
    jmp exception
copr_error:
    push 0xFFFFFFFF
    push 16
    jmp exception

exception:
    call exception_handler
    add esp, 4*2
    hlt


;==================================================
;restart

restart:
    mov esp, [p_proc_ready]
    lldt [esp + P_LDT_SEL]
    lea eax, [esp + P_STACKTOP]
    mov dword [tss + TSS3_S_SP0], eax

    pop gs
    pop fs
    pop es
    pop ds
    popad

    add esp, 4
    iretd
