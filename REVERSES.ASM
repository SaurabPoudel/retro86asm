.model small
.stack 100h
.data
        para label byte
        max db 80
        act db ?
        str db 80 dup('$')
        msg1 db "Enter a line: ",'$'
        msg2 db "Reverse is",'$'

.code
        main proc
        mov ax,@data
        mov ds,ax

        ;prompt
        mov ah,09h
        lea dx,msg1
        int 21h

        ;read line
        mov ah,0ah
        lea dx,para
        int 21h

        ;main logic
        mov ch,00h
        mov cl,act
        lea si,str
        mov dh,00h
    again: mov dl,[si]
           push dx
           inc si
           loop again

            lea si,str
            mov ch,00h
            mov cl,act
       feri: pop dx
             mov [si],dl
             inc si
             loop feri

             mov ah,02h
             mov dl,0dh
             int 21h
             mov ah,02h
             mov dl,0ah
             int 21h

             mov ah,09h
             lea dx,str
             int 21h

             mov ah,4ch
             int 21h
      end main
      end 
























