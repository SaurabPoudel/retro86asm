;in this program we will do both dos and video interupt like clear screen
title to print each word in sentence in new line at the center of screen
.model small
.stack 100h
.data
        para label byte
        max db 80
        act db ?
        str db 255 dup('$')
        msg1 db "Enter a sentence: ",'$'


.code
main proc
        mov ax,@data
        mov ds,ax

        ;print message
        mov ah,09h
        lea dx,msg1
        int 21h

        ;read string
        mov ah,0ah
        lea dx,para
        int 21h

        ;clear screen
        mov ah,06h
        mov al,00h
        mov cx,0000h
        mov dx,184fh
        mov bh,71h
        int 10h

        mov ah,02h
        mov dh,12h
        mov dl,39
        int 10h
        ; main logic
        mov ch,00h
        mov cl,act
        lea si,str
 again: mov dl,[si]
        cmp dl,' '
        jne below

        ;new line
        mov ah,02h
        mov dl,0dh
        int 21h
        mov ah,02h
        mov dl,0ah
        int 21h
        jmp skip

  below:
        mov ah,02h
        int 21h
  skip: inc si
        loop again
        mov ah,4ch
        int 21h
end main
end




