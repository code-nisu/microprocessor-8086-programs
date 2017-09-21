DATA SEGMENT
 X DW 04H
 SQUARE DW ?
 CUBE DW ?
DATA ENDS
CODE SEGMENT
 ASSUME CS:CODE,DS:DATA
 START: MOV AX,DATA  ;Load the Data to AX.
 MOV DS,AX           ;Move the Data AX to DS.
 MOV AX,X            ;Move the X number Data to AX.
 MOV BX,X            ;Move the X number Data to BX.
 MUL BX              ;Perform the multiplication by BX.
 MOV SQUARE,AX       ;Store value in SQUARE.
 MUL BX              ;Perform the multiplication by BX.
 MOV CUBE,AX         ;Store value in CUBE. 
 MOV AH,4CH
 ;INT 21H            ;interrupt
CODE ENDS
END START






