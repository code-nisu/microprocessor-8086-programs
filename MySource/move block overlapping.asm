DATA SEGMENT
 X DB 01H,02H,03H,04H,05H   ; Initialize Data Segments Memory Locations
 DATA ENDS
 CODE SEGMENT
 ASSUME CS:CODE,DS:DATA
 START:MOV AX,DATA          ; Initialize DS to point to start of the memory
 MOV DS,AX                  ; set aside for storing of data
 MOV CX,05H                 ; Load counter
 LEA SI,X+04                ; SI pointer pointed to top of the memory block
 LEA DI,X+04+03             ; 03 is displacement of over lapping, DI pointed to
                            ; the top of the destination block
 UP: MOV BL,[SI]            ; Move the SI content to BL register
 MOV [DI],BL                ; Move the BL register to content of DI
 DEC SI                     ; Update SI and DI
 DEC DI
 DEC CX                     ; Decrement the counter till it becomes zero
 JNZ UP
 MOV AH,4CH
 INT 21H
 CODE ENDS
 END START 