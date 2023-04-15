;%define _BOOT_DEBUG_

%ifdef _BOOT_DEBUG_
    org 0100h
%else
    org 07c00h
%endif

jmp short LABEL_START
nop

;head of FAT12 disk
BS_OEMName      DB 'ForrestY'
BPB_BytsPerSec  DW 512
BPB_SecPerClus  DB 1
BPB_RsvdSecCnt  DW 1
BPB_NumFATs     DB 2
BPB_RootEntCnt  DW 224
BPB_TotSec16    DW 2880
BPB_Media       DB 0xF0
BPB_FATSz16     DW 9
BPB_SecPerTrk   DW 18
BPB_NumHeads    DW 2
BPB_HiddSec     DD 0
BPB_TotSec32    DD 0
BS_DrvNum       DB 0
BS_Reserved1    DB 0
BS_BootSig      DB 29h
BS_VolID        DD 0
BS_VolLab       DB 'OrangeS0.02'
BS_FileSysType  DB 'FAT12   '

LABEL_START:
    mov ax, cs
    mov ds, ax
    mov es, ax
    Call DispStr
    jmp $
DispStr:
    mov ax, BootMessage
    mov bp, ax
    mov cx, 16
    mov ax, 01301h
    mov bx, 000ch

    mov dl, 0
    int 10h
    ret
BootMessage: db "Hello OS world!"
times 510-($-$$) db 0
dw 0xaa55
