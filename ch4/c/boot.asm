;%define _BOOT_DEBUG_

%ifdef _BOOT_DEBUG_
    org 0100h
%else
    org 07c00h
%endif

%ifdef _BOOT_DEBUG_
    BaseOfStack equ 0100h
%else
    BaseOfStack equ 07c00h
%endif

BaseOfLoader        equ 0900h
OffSetOfLoader      equ 0100h ;offset of loader in a seg
RootDirSectors      equ 14 ;sectors root dir use
SectorNoOfRootDirectory     equ 19 ;first sector of root sector
SectorNoOfFAT1      equ 1
DeltaSectorNo       equ 17

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
    mov ss, ax
    mov sp, BaseOfStack
    
    ; clear screen
    mov ax, 0600h
    mov bx, 0700h
    mov cx, 0
    mov dx, 0184fh
    int 10h

    mov dh, 0
    call DispStr

    xor ah, ah
    xor dl, dl
    int 13h

    mov word [wSectorNo], SectorNoOfRootDirectory
LABEL_SEARCH_IN_ROOT_DIR_BEGIN:
    cmp word [wRootDirSizeForLoop], 0
    jz LABEL_NO_LOADERBIN

    dec word [wRootDirSizeForLoop]
    mov ax, BaseOfLoader
    mov es, ax
    mov bx, OffSetOfLoader
    mov ax, [wSectorNo]
    mov cl, 1
    call ReadSector

    mov si, LoaderFileName
    mov di, OffSetOfLoader
    cld ;why close the int
    mov dx, 10h

LABEL_SEARCH_FOR_LOADERBIN:
    cmp dx, 0
    jz LABEL_GOTO_NEXT_SECTOR_IN_ROOT_DIR
    dec dx
    mov cx, 11

LABEL_CMP_FILENAME:
    cmp cx, 0
    jz LABEL_FILENAME_FOUND
    dec cx

    lodsb
    cmp al, byte [es:di]
    jz LABEL_GO_ON
    jmp LABEL_DIFFERENT

LABEL_GO_ON:
    inc di
    jmp LABEL_CMP_FILENAME

LABEL_DIFFERENT:
    and di, 0FFE0h
    add di, 020h
    mov si, LoaderFileName
    jmp LABEL_SEARCH_FOR_LOADERBIN

LABEL_GOTO_NEXT_SECTOR_IN_ROOT_DIR:
    add word [wSectorNo], 1
    jmp LABEL_SEARCH_IN_ROOT_DIR_BEGIN

LABEL_NO_LOADERBIN:
    mov dh, 2
    call DispStr
    %ifdef _BOOT_DEBUG_
        mov ax, 4c00h
        int 21h
    %else
        jmp $
    %endif

LABEL_FILENAME_FOUND:
    mov ax, RootDirSectors
    and di, 0FFE0h
    add di, 01Ah

    mov cx, [es:di]
    push cx
    add cx, ax
    add cx, DeltaSectorNo
    mov ax, BaseOfLoader
    mov es, ax
    mov bx, OffSetOfLoader
    mov ax, cx

LABEL_GOON_LOADING_FILE:
    push ax
    push bx
    mov ah, 0Eh
    mov al, '.'
    mov bl, 0Fh
    int 10h
    pop bx
    pop ax

    mov cl, 1
    call ReadSector
    pop ax
    call GetFATEntry
    cmp ax, 0FFFh
    jz LABEL_FILE_LOADED
    push ax
    mov dx, RootDirSectors
    add ax, dx
    add ax, DeltaSectorNo
    add bx, [BPB_BytsPerSec]
    jmp LABEL_GOON_LOADING_FILE
LABEL_FILE_LOADED:
    xchg bx, bx
    mov dh, 1
    call DispStr

    jmp BaseOfLoader:OffSetOfLoader


    


;=============================================
wRootDirSizeForLoop dw RootDirSectors
wSectorNo           dw 0
bOdd                db 0

LoaderFileName      db "LOADER  BIN", 0
MessageLength       equ 9
BootMessage:        db "Booting  " ; 9 bytes
Message1            db "Ready.   " ;
Message2            db "No LOADER"
;=============================================
;display a string from message(1,2) to es:bp
; dh contain message number 0(1,2)
DispStr:
    mov ax, MessageLength
    mul dh
    add ax, BootMessage
    mov bp, ax
    mov ax, ds
    mov es, ax

    mov cx, MessageLength
    mov ax, 01301h
    mov bx, 0007h

    mov dl, 0
    int 10h
    ret

; start sector: ax
; number of sectors: cl
; destination : es:bx
ReadSector:
   push bp
   mov bp, sp
   sub esp, 2
   mov byte [bp-2], cl

   mov dl, [BPB_SecPerTrk]
   div dl
   mov ch, al
   shr ch, 1
   mov dh, al
   and dh, 1
   inc ah
   xchg ah, cl
   mov dl, [BS_DrvNum]
.GoOnReading:
   mov ah, 02h
   mov al, byte [bp-2]
   int 13h
   jc .GoOnReading

   add esp, 2
   pop bp
   ret

; GetFATEntry
; ax : number of sector of the file
; result: ax -- the entry of FAT for ax
GetFATEntry:
    push es
    push bx
    push ax

    mov ax, BaseOfLoader
    sub ax, 0100h
    mov es, ax

    pop ax
    mov byte [bOdd], 0
    mov bx, 3
    mul bx
    mov bx, 2
    div bx

    cmp dx, 0
    jz LABEL_EVEN
    mov byte [bOdd], 1
LABEL_EVEN:
    xor dx, dx
    mov bx, [BPB_BytsPerSec]
    div bx

    push dx
    add ax, SectorNoOfFAT1
    mov bx, 0
    mov cl, 2
    call ReadSector

    pop bx
    mov ax, [es:bx]
    cmp byte [bOdd], 1
    jnz LABEL_EVEN_2
    shr ax, 4
LABEL_EVEN_2:
    and ax, 0FFFh
    
    pop bx
    pop es
    ret
    
    
times 510 - ($ - $$) db 0
dw 0xaa55
