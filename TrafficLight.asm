.def temp=R16
.org 0x00
jmp start
start:
ldi temp,0xff
out DDRB,temp
ldi temp,0x01
out PORTB,temp
ldi R17,16
up1:
call Delay_125ms
dec R17
brne up1
ldi temp,0x02
out PORTB,temp
ldi R17,4
up2:
call Delay_125ms
dec R17
brne up2
ldi temp,0x04
out PORTB,temp
ldi R17,24
up3:
call Delay_125ms
dec R17
brne up3
jmp start

Delay_125ms:						  ; For CLK(CPU) = 1 MHz
    LDI     R20,   8					  ; One clock cycle;
Delay1:
    LDI     R21,   125					 ; One clock cycle
Delay2:
    LDI     R22,   250					; One clock cycle
Delay3:
    DEC     R22							 ; One clock cycle
    NOP									; One clock cycle
    BRNE    Delay3						; Two clock cycles when jumping to Delay3, 1 clock when continuing to DEC
    DEC     R21							; One clock cycle
    BRNE    Delay2						 ; Two clock cycles when jumping to Delay2, 1 clock when continuing to DEC
    DEC     R20								; One clock Cycle
    BRNE    Delay1						 ; Two clock cycles when jumping to Delay1, 1 clock when continuing to RET
RET
