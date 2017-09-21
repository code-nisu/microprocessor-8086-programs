
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV DI, 18
  MOV AH, 0
  INT 1Ah
  MOV BX, DX
Delay:
  MOV AH, 0
  INT 1Ah
  SUB DX, BX
  CMP DI, DX
  JA Delay; add your code here

ret




