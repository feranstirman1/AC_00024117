org 	100h

section .text

	mov 	dx, msg
	call 	w_strng

	xor 	si, si 	;lo mimso que: mov si, 0000h
lupi:	call 	kb
	cmp 	al, "$"
	je	mostrar
	mov	[300h+si], al ; CS:0300h en adelante
	inc 	si
	jmp 	lupi

mostrar:mov 	dx, nl
	call	w_strng
	mov	byte [300h+si], "$"
	mov di,0d
	call transformar
	call 	kb	; espera un input para terminar el programa
	int 	20h
transformar:
	mov al,[300h+di]
	SUB al,48d
	mov [300h+di],al
	inc di
	CMP di,5d
	JE calculo
	call transformar
calculo:
    ; se suman todos los numeros del carnet en un acumulador(ax)
	mov ax, 0d
    mov cx,[300h]
    mov ax,cx
    mov cx,[301h]
    mov bx,cx
    ADD ax,bx
    mov cx,[302h]
    ADD ax,cx
    mov cx,[303h]
    ADD ax,cx
    mov cx,[304h]
    ADD ax,cx
	mov [310h],al
	mov ax,[310h]
    mov cl,5d
    div cl ;con esto se saca el promedio
	mov [320h],al
    mov cl,10d
    CMP al,cl
    JE msg10
    mov cl,9d
    CMP al,cl
    JE msg9
    mov cl,8d
    CMP al,cl
    JE msg8
    mov cl,7d
    CMP al,cl
    JE msg7
    mov cl,6d
    CMP al,cl
    JE msg6
    mov cl,5d
    CMP al,cl
    JE msg5
    mov cl,4d
    CMP al,cl
    JE msg4
    mov cl,3d
    CMP al,cl
    JE msg3
    mov cl,2d
    CMP al,cl
    JE msg2
    mov cl,1d
    CMP al,cl
    JE msg1
msg10:
	mov dx,grade10
	call w_strng
	mov di,0d
	int 20h
msg9:
	mov dx,grade9
	call w_strng
	mov di,0d
	int 20h
msg8:
	mov dx,grade8
	call w_strng
	mov di,0d
	int 20h
msg7:
	mov dx,grade7
	call w_strng
	mov di,0d
	int 20h
msg6:
	mov dx,grade6
	call w_strng
	mov di,0d
	int 20h
msg5:
	mov dx,grade5
	call w_strng
	mov di,0d
	int 	20h
msg4:
	mov dx,grade4
	call w_strng
	int 	20h
msg3:
	mov dx,grade3
	call w_strng
	mov di,0d
	int 	20h
msg2:
	mov dx,grade2
	call w_strng
	mov di,0d
	int 	20h
msg1:
	mov dx,grade1
	call w_strng
	mov di,0d
	int 	20h
texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

kb: 	mov	ah, 1h
	int 	21h
	ret

w_strng:
	mov	ah, 09h
	int 	21h
	ret

section .data
msg 	db 	"Ingresa los ultimos 5 numeros de tu carnet: $"
grade10		db 	"Perfecto solo Dios$"
grade9		db 	"Siempre me esfuerzo$"
grade8		db 	"Colocho$"
grade7		db 	"Muy bien$"
grade6		db 	"Peores nada$"
grade5		db 	"En el segundo$"
grade4		db 	"Me recupero$"
grade3		db 	"Hay salud$"
grade2		db 	"Aun se pasa$"
grade1		db 	"Solo necesito el 0$"
nl	db 	0xA, 0xD, "$"