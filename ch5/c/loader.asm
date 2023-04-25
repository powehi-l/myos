org 0100h

BaseOfStack equ 0100h
BaseOfKernelFile    equ 08000h ;position kernel.bin are loaded -- segment address
OffsetOfKernelFile  equ 0h  ; position kernel.bin are loaded -- offset address

jmp LABEL_START

%include "fat12hdr.inc"

LABEL_START:
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, BaseOfStack
    mov dh, 0
    call DispStr
    mov word [wSectorNo], SectorNoOfRootDirectory

    xor ah, ah
    xor dl, dl
    int 13h

LABEL_SEARCH_IN_ROOT_DIR_BEGIN:
    cmp word [wRootDirSizeForLoop], 0
    jz LABEL_NO_KERNELBIN

    dec word [wRootDirSizeForLoop]
    mov ax, BaseOfKernelFile
    mov es, ax
    mov bx, OffsetOfKernelFile
    mov ax, [wSectorNo]
    mov cl, 1
    call ReadSector

    mov si, KernelFileName
    mov di, OffsetOfKernelFile
    cld ;why close the int
    mov dx, 10h

LABEL_SEARCH_FOR_KERNELBIN:
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
    mov si, KernelFileName
    jmp LABEL_SEARCH_FOR_KERNELBIN

LABEL_GOTO_NEXT_SECTOR_IN_ROOT_DIR:
    add word [wSectorNo], 1
    jmp LABEL_SEARCH_IN_ROOT_DIR_BEGIN

LABEL_NO_KERNELBIN:
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
    ;and di, 0FFE0h
    and di, 0FFF0h

    push eax
    mov eax, [es:di+01Ch]
    mov dword [dwKernelSize], eax
    pop eax

    add di, 01Ah
    mov cx, word [es:di]
    push cx
    add cx, ax
    add cx, DeltaSectorNo
    mov ax, BaseOfKernelFile
    mov es, ax
    mov bx, OffsetOfKernelFile
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
    xchg bx, bx

    mov cl, 1
    
    call ReadSector
    pop ax
    call GetFATEntry
    cmp ax, 0FFFh
    jz LABEL_FILE_LOADED
    push ax
;    add ax, RootDirSectors
    mov dx, RootDirSectors
    add ax, dx
    add ax, DeltaSectorNo
    add bx, [BPB_BytsPerSec]
    jmp LABEL_GOON_LOADING_FILE
    
    
LABEL_FILE_LOADED:
    ;xchg bx, bx
    call KillMotor

    mov dh, 1
    call DispStr

    jmp $

;=============================================
wRootDirSizeForLoop dw RootDirSectors
wSectorNo           dw 0
bOdd                db 0
dwKernelSize        dd 0

KernelFileName      db "KERNEL  BIN", 0
MessageLength       equ 9
BootMessage:        db "Loading  " ; 9 bytes
Message1            db "Ready.   " ;
Message2            db "No KERNEL"
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
    add dh, 3
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

   push bx
   mov bl, [BPB_SecPerTrk]
   div bl
   inc ah
   mov cl, ah
   mov dh, al
   shr al, 1
   mov ch, al
   and dh, 1
   pop bx

   mov dl, [BS_DrvNum]

   ;mov dl, [BPB_SecPerTrk]
   ;div dl
   ;mov ch, al
   ;shr ch, 1
   ;mov dh, al
   ;and dh, 1
   ;inc ah
   ;xchg ah, cl
   ;mov dl, [BS_DrvNum]
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

    mov ax, BaseOfKernelFile
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

    ;pop bx
    pop dx
    add bx, dx
    mov ax, [es:bx]
    cmp byte [bOdd], 1
    jnz LABEL_EVEN_2
    shr ax, 4
LABEL_EVEN_2:
    and ax, 0FFFh
    
    pop bx
    pop es
    ret


KillMotor:
    push dx
    mov dx, 03F2h
    mov al, 0
    out dx, al
    pop dx
    ret
