%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    
    XOR     EDX,EDX

    LEA     ESI, [a]
    MOV     ECX, 8


next:
    MOV     AL,[ESI]
    CMP     AL, 0
    JNZ     summ   
next1:      
    INC     ESI
    LOOP    next
    JMP     quit    
summ:
    INC     DL
    JMP     next1
    
quit: 
    PRINT_UDEC  1,DL    
    
    
    
    ret
    
    
    
section .data
a: DB 7, 2, 0, 6, 0, 9, 8, -10