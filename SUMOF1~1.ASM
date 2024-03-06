TITLE hello this is my first program on asm
.MODEL SMALL
.STACK 100H
.DATA
a dw 8888H
b dw 9999H
sum dw ?
carry db 00H
.code
main proc
mov ax,@data
mov ds,ax
mov ax,a
add ax,b
jnc no_carry
mov carry,01H
no_carry:
mov sum,ax
mov ah,06h
mov al,00h
mov cx,0000h
mov dx,184fh
mov bh, 71h
int 10h
mov ah,09h
lea dx,sum
int 21h
mov ah,4ch
int 21h
main endp
end main


