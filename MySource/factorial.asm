DATA SEGMENT
 X DW 06H
 FACT DW ?
DATA ENDS
CODE SEGMENT
 ASSUME CS:CODE,DS:DATA
 START: MOV AX,DATA
 MOV DS,AX
 MOV AX,01H ;Set the value of AX as 01H.
 MOV CX,X   ;Move the i/p number to CX.
 UP: MUL CX ;Perform the Loop multiplication operation.
 LOOP UP
 MOV FACT,AX;Store the FACT value. 
 MOV AH,4CH     
 INT 21H
CODE ENDS
END START
;Input: 06
;Output: 2D0H

