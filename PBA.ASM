ASSUME CS: CODE,DS:DATA
DATA SEGMENT
BCD DB 49H
ASCII1 DB ?
ASCII2 DB ?
DATA ENDS
CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX
MOV AL,BCD 
MOV BL,AL
AND AL,0FH
OR AL,30H
MOV ASCII1,AL
MOV AL,BL
AND AL,0F0H
MOV CL,04H
ROR  AL,CL
MOV ASCII2,AL
MOV AH,4CH
INT  21H
CODE ENDS 
END START
END
