org 0100h


jmp LABEL_START

%include "fat12hdr.inc"
%include "load.inc"
%include "pm.inc"

LABEL_GDT: Descriptor 0, 0, 0 ;null Descriptor
LABEL_DESC_FLAT_C: Descriptor 0, 0fffffh, DA_CR|DA_32|DA_LIMIT_4K ;0-4G excute
LABEL_DESC_FLAT_RW: Descriptor 0, 0fffffh, DA_DRW|DA_32|DA_LIMIT_4K ;0-4G read and write
LABEL_DESC_VIDEO: Descriptor 0B8000h, 0ffffh, DA_DRW|DA_DPL3 ; video address

GdtLen      equ $ - LABEL_GDT
GdtPtr      dw GdtLen - 1 ;limit
            dd BaseOfLoaderPhyAddr + LABEL_GDT ;base address

SelectorFlatC   equ LABEL_DESC_FLAT_C - LABEL_GDT
SelectorFlatRW  equ LABEL_DESC_FLAT_RW - LABEL_GDT
SelectorVideo   equ LABEL_DESC_VIDEO - LABEL_GDT + SA_RPL3

BaseOfStack equ 0100h

LABEL_START:
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, BaseOfStack
    
    mov dh, 0 ; "Loading "
    call DispStrRealMode

    mov ebx, 0
    mov di, _MemChkBuf
.MemChkLoop:
    mov eax, 0E820h
    mov edx, 0534D4150h
    mov ecx, 20
    int 15h

    jc .MemChkFail
    add di, 20
    inc dword [_dwMCRNumber]
    cmp ebx, 0
    jne .MemChkLoop
    jmp .MemChkOK

.MemChkFail:
    mov dword [_dwMCRNumber], 0
.MemChkOK:
    ; search kernel.bin in volumn A
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
    call DispStrRealMode
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
    call KillMotor

    mov dh, 1 ; "Ready."
    call DispStrRealMode

    lgdt [GdtPtr]


    cli

    in al, 92h
    or al, 00000010b
    out 92h, al

    mov eax, cr0
    or eax, 1
    mov cr0, eax

    jmp dword SelectorFlatC:(BaseOfLoaderPhyAddr + LABEL_PM_START)

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
DispStrRealMode:
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

; below code excute in protected mode
; 32 bit code  jump from real mode
[SECTION .32]
ALIGN 32
[BITS 32]

LABEL_PM_START:
    mov ax, SelectorVideo
    mov gs, ax

    mov ax, SelectorFlatRW

    mov ds, ax
    mov es, ax
    mov fs, ax
    mov ss, ax
    mov esp, TopOfStack

    push szMemChkTitle
    call DispStr
    add esp, 4

    call DispMemInfo
    call SetupPaging

;    mov ah, 0Fh
;    mov al, 'P'
;    mov [gs:((80 * 0 + 39) * 2)], ax
    call InitKernel
    jmp SelectorFlatC:KernelEntryPointPhyAddr


; ------------------------------------------------------------------------
; 显示 AL 中的数字
; ------------------------------------------------------------------------
DispAL:
	push	ecx
	push	edx
	push	edi

	mov	edi, [dwDispPos]

	mov	ah, 0Fh			; 0000b: 黑底    1111b: 白字
	mov	dl, al
	shr	al, 4
	mov	ecx, 2
.begin:
	and	al, 01111b
	cmp	al, 9
	ja	.1
	add	al, '0'
	jmp	.2
.1:
	sub	al, 0Ah
	add	al, 'A'
.2:
	mov	[gs:edi], ax
	add	edi, 2

	mov	al, dl
	loop	.begin
	;add	edi, 2

	mov	[dwDispPos], edi

	pop	edi
	pop	edx
	pop	ecx

	ret
; DispAL 结束-------------------------------------------------------------


; ------------------------------------------------------------------------
; 显示一个整形数
; ------------------------------------------------------------------------
DispInt:
	mov	eax, [esp + 4]
	shr	eax, 24
	call	DispAL

	mov	eax, [esp + 4]
	shr	eax, 16
	call	DispAL

	mov	eax, [esp + 4]
	shr	eax, 8
	call	DispAL

	mov	eax, [esp + 4]
	call	DispAL

	mov	ah, 07h			; 0000b: 黑底    0111b: 灰字
	mov	al, 'h'
	push	edi
	mov	edi, [dwDispPos]
	mov	[gs:edi], ax
	add	edi, 4
	mov	[dwDispPos], edi
	pop	edi

	ret
; DispInt 结束------------------------------------------------------------

; ------------------------------------------------------------------------
; 显示一个字符串
; ------------------------------------------------------------------------
DispStr:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	esi
	push	edi

	mov	esi, [ebp + 8]	; pszInfo
	mov	edi, [dwDispPos]
	mov	ah, 0Fh
.1:
	lodsb
	test	al, al
	jz	.2
	cmp	al, 0Ah	; 是回车吗?
	jnz	.3
	push	eax
	mov	eax, edi
	mov	bl, 160
	div	bl
	and	eax, 0FFh
	inc	eax
	mov	bl, 160
	mul	bl
	mov	edi, eax
	pop	eax
	jmp	.1
.3:
	mov	[gs:edi], ax
	add	edi, 2
	jmp	.1

.2:
	mov	[dwDispPos], edi

	pop	edi
	pop	esi
	pop	ebx
	pop	ebp
	ret
; DispStr 结束------------------------------------------------------------

; ------------------------------------------------------------------------
; 换行
; ------------------------------------------------------------------------
DispReturn:
	push	szReturn
	call	DispStr			;printf("\n");
	add	esp, 4

	ret
; DispReturn 结束---------------------------------------------------------


; ------------------------------------------------------------------------
; 内存拷贝，仿 memcpy
; ------------------------------------------------------------------------
; void* MemCpy(void* es:pDest, void* ds:pSrc, int iSize);
; ------------------------------------------------------------------------
MemCpy:
	push	ebp
	mov	ebp, esp

	push	esi
	push	edi
	push	ecx

	mov	edi, [ebp + 8]	; Destination
	mov	esi, [ebp + 12]	; Source
	mov	ecx, [ebp + 16]	; Counter
.1:
	cmp	ecx, 0		; 判断计数器
	jz	.2		; 计数器为零时跳出

	mov	al, [ds:esi]		; ┓
	inc	esi			; ┃
					; ┣ 逐字节移动
	mov	byte [es:edi], al	; ┃
	inc	edi			; ┛

	dec	ecx		; 计数器减一
	jmp	.1		; 循环
.2:
	mov	eax, [ebp + 8]	; 返回值

	pop	ecx
	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp

	ret			; 函数结束，返回
; MemCpy 结束-------------------------------------------------------------



; 显示内存信息 --------------------------------------------------------------
DispMemInfo:
	push	esi
	push	edi
	push	ecx

	mov	esi, MemChkBuf
	mov	ecx, [dwMCRNumber];for(int i=0;i<[MCRNumber];i++)//每次得到一个ARDS
.loop:				  ;{
	mov	edx, 5		  ;  for(int j=0;j<5;j++)//每次得到一个ARDS中的成员
	mov	edi, ARDStruct	  ;  {//依次显示:BaseAddrLow,BaseAddrHigh,LengthLow
.1:				  ;               LengthHigh,Type
	push	dword [esi]	  ;
	call	DispInt		  ;    DispInt(MemChkBuf[j*4]); // 显示一个成员
	pop	eax		  ;
	stosd			  ;    ARDStruct[j*4] = MemChkBuf[j*4];
	add	esi, 4		  ;
	dec	edx		  ;
	cmp	edx, 0		  ;
	jnz	.1		  ;  }
	call	DispReturn	  ;  printf("\n");
	cmp	dword [dwType], 1 ;  if(Type == AddressRangeMemory)
	jne	.2		  ;  {
	mov	eax, [dwBaseAddrLow];
	add	eax, [dwLengthLow];
	cmp	eax, [dwMemSize]  ;    if(BaseAddrLow + LengthLow > MemSize)
	jb	.2		  ;
	mov	[dwMemSize], eax  ;    MemSize = BaseAddrLow + LengthLow;
.2:				  ;  }
	loop	.loop		  ;}
				  ;
	call	DispReturn	  ;printf("\n");
	push	szRAMSize	  ;
	call	DispStr		  ;printf("RAM size:");
	add	esp, 4		  ;
				  ;
	push	dword [dwMemSize] ;
	call	DispInt		  ;DispInt(MemSize);
	add	esp, 4		  ;

	pop	ecx
	pop	edi
	pop	esi
	ret
; ---------------------------------------------------------------------------

; 启动分页机制 --------------------------------------------------------------
SetupPaging:
	; 根据内存大小计算应初始化多少PDE以及多少页表
	xor	edx, edx
	mov	eax, [dwMemSize]
	mov	ebx, 400000h	; 400000h = 4M = 4096 * 1024, 一个页表对应的内存大小
	div	ebx
	mov	ecx, eax	; 此时 ecx 为页表的个数，也即 PDE 应该的个数
	test	edx, edx
	jz	.no_remainder
	inc	ecx		; 如果余数不为 0 就需增加一个页表
.no_remainder:
	push	ecx		; 暂存页表个数

	; 为简化处理, 所有线性地址对应相等的物理地址. 并且不考虑内存空洞.

	; 首先初始化页目录
	mov	ax, SelectorFlatRW
	mov	es, ax
	mov	edi, PageDirBase	; 此段首地址为 PageDirBase
	xor	eax, eax
	mov	eax, PageTblBase | PG_P  | PG_USU | PG_RWW
.1:
	stosd
	add	eax, 4096		; 为了简化, 所有页表在内存中是连续的
	loop	.1

	; 再初始化所有页表
	pop	eax			; 页表个数
	mov	ebx, 1024		; 每个页表 1024 个 PTE
	mul	ebx
	mov	ecx, eax		; PTE个数 = 页表个数 * 1024
	mov	edi, PageTblBase	; 此段首地址为 PageTblBase
	xor	eax, eax
	mov	eax, PG_P  | PG_USU | PG_RWW
.2:
	stosd
	add	eax, 4096		; 每一页指向 4K 的空间
	loop	.2

	mov	eax, PageDirBase
	mov	cr3, eax
	mov	eax, cr0
	or	eax, 80000000h
	mov	cr0, eax
	jmp	short .3
.3:
	nop

	ret
; 分页机制启动完毕 ----------------------------------------------------------


;init kernel
InitKernel:
    xor esi, esi
    mov cx, [BaseOfKernelFilePhyAddr + 02Ch]
    movzx ecx, cx
    mov esi, [BaseOfKernelFilePhyAddr + 01Ch]
    add esi, BaseOfKernelFilePhyAddr

.begin:
    mov eax, [esi + 0]
    cmp eax, 0
    jz .NoAction
    push dword [esi + 010h]
    mov eax, [esi + 04h]
    add eax, BaseOfKernelFilePhyAddr
    push eax
    push dword [esi + 08h]

    call MemCpy
    add esp, 12

.NoAction:
    add esi, 020h
    dec ecx
    jnz .begin

    ret

; SECTION .data1 之开始 ---------------------------------------------------------------------------------------------
[SECTION .data1]

ALIGN	32

LABEL_DATA:
; 实模式下使用这些符号
; 字符串
_szMemChkTitle:	db "BaseAddrL BaseAddrH LengthLow LengthHigh   Type", 0Ah, 0
_szRAMSize:	db "RAM size:", 0
_szReturn:	db 0Ah, 0
;; 变量
_dwMCRNumber:	dd 0	; Memory Check Result
_dwDispPos:	dd (80 * 6 + 0) * 2	; 屏幕第 6 行, 第 0 列
_dwMemSize:	dd 0
_ARDStruct:	; Address Range Descriptor Structure
  _dwBaseAddrLow:		dd	0
  _dwBaseAddrHigh:		dd	0
  _dwLengthLow:			dd	0
  _dwLengthHigh:		dd	0
  _dwType:			dd	0
_MemChkBuf:	times	256	db	0
;
;; 保护模式下使用这些符号
szMemChkTitle		equ	BaseOfLoaderPhyAddr + _szMemChkTitle
szRAMSize		equ	BaseOfLoaderPhyAddr + _szRAMSize
szReturn		equ	BaseOfLoaderPhyAddr + _szReturn
dwDispPos		equ	BaseOfLoaderPhyAddr + _dwDispPos
dwMemSize		equ	BaseOfLoaderPhyAddr + _dwMemSize
dwMCRNumber		equ	BaseOfLoaderPhyAddr + _dwMCRNumber
ARDStruct		equ	BaseOfLoaderPhyAddr + _ARDStruct
	dwBaseAddrLow	equ	BaseOfLoaderPhyAddr + _dwBaseAddrLow
	dwBaseAddrHigh	equ	BaseOfLoaderPhyAddr + _dwBaseAddrHigh
	dwLengthLow	equ	BaseOfLoaderPhyAddr + _dwLengthLow
	dwLengthHigh	equ	BaseOfLoaderPhyAddr + _dwLengthHigh
	dwType		equ	BaseOfLoaderPhyAddr + _dwType
MemChkBuf		equ	BaseOfLoaderPhyAddr + _MemChkBuf


; 堆栈就在数据段的末尾
StackSpace:	times	1024	db	0
TopOfStack	equ	BaseOfLoaderPhyAddr + $	; 栈顶
; SECTION .data1 之结束 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
