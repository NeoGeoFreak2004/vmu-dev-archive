.include "GameHeader.i"
.include "./lib/libperspective.asm"
.include "./lib/libkcommon.asm"
.include "./lib/sfr.i"
;=====================;
; Define Varibles     ;
;=====================;
p3_pressed    =   $4
p3_last_input =   $5
;=====================;
; Prepare Application ;
;=====================;
.org $00
jmpf start

.org $03
reti

.org $0b
reti

.org $13
reti

.org $1b
jmpf t1int

.org $23
reti

.org $2b
reti

.org $33
reti

.org $3b
reti

.org $43
reti

.org $4b
clr1 p3int,0
clr1 p3int,1
reti

;nop_irq:
;reti

.org $130
t1int:
push ie
clr1 ie,7
not1 ext,0
jmpf t1int
pop  ie
reti

.org $1f0

goodbye:
not1 ext,0
jmpf goodbye


;======================;
; Main Program         ;
;======================;
start:
       clr1 ie,7
       mov #$a1,ocr
       mov #$09,mcr
       mov #$80,vccr
       clr1 p3int,0
       mov #$ff,p3
       set1 ie,7

Main_Loop:
         jmpf Main_Loop
         P_Draw_Background_Constant Hello_Text_Display
         P_Blit_Screen
         jmpf Main_Loop

    ;==============;
    ; Include Image;
    ;==============;

    .include   "./Hello_Text_Display.asm"

    .cnop 0,$200    ; Pad To A Evan Number