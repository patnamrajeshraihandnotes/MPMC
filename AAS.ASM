ASSUME CS: CODE,DS:DATA
DATA SEGMENT
Char  Db 9	
Char1  Db  5
RES  DW ?
DATA ENDS
CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX
MOV AH,00H
MOV AL,CHAR
SUB AL,CHAR1
AAS
MOV RES,AX
MOV AH,4CH
INT  21H
CODE ENDS 
END START
END
