
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx,05h  
mov ax,00h
label:
add ax,01h
 loopne label
; add your code here

ret




