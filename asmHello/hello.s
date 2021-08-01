; hello.s
; .import __STARTUP_LOAD__, __BSS_LOAD__ ; Linker generated

; .segment "EXEHDR"
; .addr __STARTUP_LOAD__ ; Start address
; .word __BSS_LOAD__ - __STARTUP_LOAD__ ; Size

.segment "CODE"
; Apple ROM Routines
HOME = $FC58
COUT = $FDED
PRBYTE = $FDDA
PRINTCR = $FD8E
;
ENTRY:  
;        jsr HOME
        lda #8
        sta ITR
@L1:
        jsr PRHELLO
        lda ITR
        jsr PRBYTE
        jsr PRINTCR
        dec ITR
        bne @L1
        rts
;
PRHELLO:
        ldx #$0
@L1:    lda HELLO,X
        ora #$80
        jsr COUT
        inx
        cpx #$05
        bne @L1
        rts

;
.segment "DATA"
HELLO:  .asciiz "HELLO"
ITR:    .byte 0
