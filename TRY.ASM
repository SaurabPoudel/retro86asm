.model small
.stack 100h

.data
        para label byte
        max db 80
        str db 80 dup('$')
        act db ?
        msg1 db "enter a word: ",'$'
.code
main proc
        mov ax,@data
        mov ds,ax
        mov ah,09h
        lea dx, msg1
        int 21h
        mov ah,0Ah
        lea dx, para
        int 21h
        mov ah,02
        mov dl,0dh
        int 21h
        mov ah,02
        mov dl,0ah
        int 21h
        mov ah,09h
        lea dx, str
        int 21h
        mov ah,4ch
        int 21h
end main
end





