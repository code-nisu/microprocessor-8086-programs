  DATA SEGMENT
 NUM DW 1234H, 0F234H
 SUM DW 2 DUP(0)
DATA ENDS
CODE SEGMENT
 ASSUME CS: CODE, DS:DATA
START: MOV AX,DATA
 MOV DS,AX
 MOV AX,NUM             ; First number loaded into AX
 MOV BX,0H              ; For carry BX register is cleared
 ADD AX,NUM+2           ; Second number added with AX
 JNC DOWN               ; Check for carry
 INC BX                 ; If carry generated increment the BX
DOWN: MOV SUM,AX        ; Storing the sum value
 MOV SUM+2,BX           ; Storing the carry value
 MOV AH,4CH
 INT 21H
CODE ENDS
END START 