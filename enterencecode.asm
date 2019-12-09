.model small
.stack 64
.data 
data1 db cr,lf,'Hello there pls enter a number for continue ','$'
data2 db cr,lf,'You enterd a number','$'
data3 db cr,lf,'Please enter a number' , '$'
cr equ 0dh
lf equ 0ah
.code
main proc far
    mov ax,@data
    mov ds,ax
    
    mov ax,0600h
    mov bh,07
    mov cx,0000
    mov dx,184fh
    int 10h
    
    ;------------
    
    mov ah,02
    mov bh,00
    mov dl,05
    mov dh,08
    int 10h
    ;------------
    
over2:mov ah,09
    mov dx,offset data1
    int 21h
    
    ;------------
    
    mov ah,07
    int 21h ;yanip sönme olayi burda gerçeklesti
    
    ;------------
      cmp al,'1'
    jz over
      cmp al,'2'
    jz over
      cmp al,'3'
    jz over
      cmp al,'4'
    jz over
      cmp al,'5'
    jz over
      cmp al,'6'
    jz over
      cmp al,'7'
    jz over  
      cmp al,'8'
    jz over
      cmp al,'9'
    jz over
    ;------------
   
      mov ah,09      
      mov dx,offset data3
      int 21h
      jmp over2
      
over:mov ah,09
     mov dx,offset data2
     
     int 21h          
     
     

     
     

      
 
     
    
    
    
    