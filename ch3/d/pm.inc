; descriptor
; usage: Descriptor Base, Limit, Attr
; Base dd
; Limit dd(low 20 bits are available)
; Attr dw(lower 4 bits of higher byte are always 0)

DA_32 EQU 4000h

DA_DPL0 EQU 00h ;DPL = 0
DA_DPL1 EQU 20h ;DPL = 1
DA_DPL2 EQU 40h ;DPL = 2
DA_DPL3 EQU 60h ;DPL = 3

; store seg descriptor
DA_DR   EQU 90h ; read only data seg
DA_DRW  EQU 92h ; read and write data seg
DA_DRWA EQU 93h ; read and writable but accessed data seg
DA_C    EQU 98h ; excutable only text seg
DA_CR   EQU 9Ah ; excutable and readable text seg
DA_CCO  EQU 9Ch ; excutable only and conforming text seg
DA_CCOR EQU 9Eh ; excutable and readable and conforming text seg

; system descriptor type
DA_LDT      EQU 82h ; local descriptor
DA_TaskGate EQU 85h ; task gate
DA_386TSS   EQU 89h ; task state
DA_386CGate EQU 8Ch ; 386 call gate
DA_386IGate EQU 8Eh ; 386 interrupt date
DA_386TGate EQU 8Fh ; 386 trap gate

; selector type

SA_RPL0      EQU 0
SA_RPL1     EQU 1
SA_RPL2     EQU 2
SA_RPL3     EQU 3

SA_TIG      EQU 0
SA_TIL      EQU 4

;descriptor macro
%macro Descriptor 3
        dw  %2 & 0FFFFh
        dw  %1 & 0FFFFh
        db  (%1 >> 16) & 0FFh
        dw  ((%2 >> 8) & 0F00h) | (%3 & 0F0FFh)
        db  (%1 >> 24) & 0FFh
%endmacro ; 8 bytes totally

;%macro Gate Selector, Offset, Dcount, Attr
%macro Gate 4
        dw (%2 & 0FFFFh)    ;offset1
        dw %1               ;selector
        dw (%3 & 1Fh) | ((%4 << 8) & 0FF00h) ;attribute
        dw ((%2 >> 16) & 0FFFFh)        ;offset2
%endmacro
