ASSUME CS: CODE,DS:DATA
DATA SEGMENT
OPR1 DW 8639H
RES  DW ?
DATA ENDS
CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX
MOV AX,OPR1
SHR AX,01H
MOV RES,AX
MOV AH,4CH
INT  21H
CODE ENDS 
END START
END
