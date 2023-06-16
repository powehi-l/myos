[SECTION .text]

global memcpy;
global memset;
global strcpy
; ------------------------------------------------------------------------
; void* memCpy(void* es:pDest, void* ds:pSrc, int iSize);
; ------------------------------------------------------------------------
memcpy:
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

; void memset(void * p_dst, char ch, int size);
memset:
    push ebp
    mov ebp, esp

    push esi
    push edi
    push ebx

    mov edi, [ebp + 8] ;destination
    mov edx, [ebp + 12];char to be put
    mov ecx, [ebp + 16]; counter
.1:
    cmp ecx, 0
    jz .2

    mov byte [edi], dl
    inc edi

    dec ecx
    jmp .1
.2:
    pop ecx
    pop edi
    pop esi
    mov esp, ebp
    pop ebp
    ret

;char *strcpy(char* p_dst, char* p_src);
strcpy:
    push ebp
    mov ebp, esp
    
    push esi
    push edi

    mov esi, [ebp + 12]
    mov edi, [ebp + 8]
.1:
    mov al, [esi]
    inc esi

    mov byte [edi], al
    inc edi

    cmp al, 0
    jnz .1

    mov eax, [ebp + 8]

    pop edi
    pop esi
    pop ebp
    ret
