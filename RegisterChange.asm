mov ax,1234h
mov bx,5678h
mov di,ax
mov si,bx 


mov dx,bx

shl ah,4
shr ah,4
shl bh,4

shr al,4
shl al,4
shr bl,4
                     
add ah,bh
add al,bl          



mov dx,di  ;dx 1234
mov cx,si  ;cx 5678

shr ch,4
shl ch,4
shr dh,4

shl cl,4
shr cl,4
shl dl,4

add ch,dh
add cl,dl

mov bx,cx
