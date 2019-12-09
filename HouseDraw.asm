mov ax,0600h
mov bh,07
mov cx,0000
mov dx,184Fh
int 10h

mov ah,00
mov al,13h
int 10h

mov cx,100
mov dx,50

back: mov ah,0ch
      mov al,04
      int 10h
      inc cx
      dec dx
      cmp cx,150
      jnz back
      
back2: mov ah,0ch
       mov al,01
       int 10h
       inc cx
       inc dx
       cmp dx,50
       jnz back2
       
back3: mov ah,0ch
       mov al,02
       int 10h
       dec cx
       cmp cx,100
       jnz back3
back4: mov ah,0ch
       mov al,07
       int 10h
       inc dx
       cmp dx,100
       jnz back4
back5: mov ah,0ch
       mov al,09h
       int 10h
       inc cx
       cmp cx,200
       jnz back5
back6: mov ah,0ch
       mov al,05h
       int 10h
       dec dx
       cmp dx,50
       jnz back6       
