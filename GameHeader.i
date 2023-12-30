; ROM info
;-------------------------------------------------------------------------------
	.org    $200
    
    .byte   "VMU Dev Lesson 1 "             ; 16 bytes
	.byte   "VMU Beginners' Tutorial #1."   ; 32 byte
    ; Thanks To Marcus, Sebastian, And Tyro For Header Format!

	.org    $240

	.word   1               ; number of icons (max = 3)
	.word   14              ; animation speed

;-------------------------------------------------------------------------------
; Game Icon Palette Table
;
; Each entry is 16-bit, as such AAAARRRR GGGGBBBB
; where a value of 0xF for alpha means opaque
;-------------------------------------------------------------------------------
	.org    $260

	.word   $fffe, $f114, $ffff, $f8df, $fa0f, $f02f, $ffae, $f000
	.word   $f60a, $ff8d, $f406, $f051, $f081, $fd7b, $fd00, $f900

;-------------------------------------------------------------------------------
; Game Icon Data
;-------------------------------------------------------------------------------

; This is where the game icons are placed.  Each icon is 512 byte long,
; 32 * 32 pixel, each pixel being represented by 4 bit (one nybble) that
; serve as a pointer into the color palette table.

       .org    $280
       ;      0        5         10        15        20        25        30 
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$10,$00,$10,$00,$00,$00,$01,$11,$01,$00,$00,$00,$00,$00,$00
       .byte $00,$11,$01,$10,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$10,$00
       .byte $00,$10,$10,$10,$10,$01,$00,$01,$10,$01,$01,$10,$11,$01,$11,$00
       .byte $00,$10,$00,$10,$10,$01,$00,$01,$00,$01,$01,$00,$10,$00,$10,$00
       .byte $00,$10,$00,$10,$01,$11,$00,$01,$00,$01,$01,$01,$10,$00,$10,$00
       .byte $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$01,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $10,$00,$10,$10,$00,$10,$10,$00,$10,$00,$01,$10,$00,$00,$00,$00
       .byte $10,$00,$10,$11,$01,$10,$10,$00,$10,$00,$10,$01,$00,$00,$00,$00
       .byte $10,$00,$10,$10,$10,$10,$10,$00,$10,$00,$10,$01,$00,$00,$00,$00
       .byte $01,$01,$00,$10,$00,$10,$10,$00,$10,$00,$11,$11,$01,$10,$01,$10
       .byte $01,$01,$00,$10,$00,$10,$10,$00,$10,$00,$10,$01,$01,$01,$01,$01
       .byte $00,$10,$00,$10,$00,$10,$01,$11,$00,$00,$10,$01,$01,$10,$01,$10
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$01,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$01,$11,$00,$00,$00,$01,$00,$01,$00
       .byte $00,$00,$00,$00,$00,$00,$01,$10,$00,$11,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$11,$11,$10,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$11,$11,$10,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$11,$11,$10,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$11,$11,$10,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$10,$00,$00,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$11,$11,$00,$01,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$10,$01,$00,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$11,$11,$10,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
