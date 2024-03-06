title To convert into uppercase

.model small
.stack 100h
.data
        para label byte
        max db 80
        act db ?
        str db 255  dup('$')
        msg1 db "Enter a word :",'$'
        msg2 db "The result is ",'$'
.code
main proc
        ;Title123 changes to TITLE123
        mov ax,@data
        mov ds,ax

        mov ah,09h
        lea dx,msg1
        int 21h

        mov ah,0Ah
        lea dx,para
        int 21h

        mov ch,00h
        mov cl,act
        lea si,str


   again: mov dl,[si]
        cmp dl, 'z'
        ja skip
        cmp dl,'a'
        jb skip
        sub dl, 20h
        mov [si],dl
   skip:inc si
        loop again



        ;new line
        mov ah,02h
        mov dl,0dh
        int 21h
        mov ah,02h
        mov dl,0Ah
        int 21h

        ;result
        mov ah,09h
        lea dx,msg2
        int 21h
        mov ah,02h
        mov dl,0dh
        int 21h
        mov ah,02h
        mov dl,0Ah
        int 21h

        mov ah,09h
        lea dx,str
        int 21h

        mov ah,4ch
        int 21h
end main
end











