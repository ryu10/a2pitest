; hello.s
.import __STARTUP_LOAD__, __BSS_LOAD__ ; Linker generated

.segment "EXEHDR"
.addr __STARTUP_LOAD__ ; Start address
.word __BSS_LOAD__ - __STARTUP_LOAD__ ; Size

.segment "STARTUP"
; Apple ROM Routines
HOME = $FC58
VTAB = $FC22
MVLEFT = $FC10
MVRIGHT = $FBF4
WAIT = $FCA8
COUT = $FDED
SETNORM = $FE84
PRBYTE = $FDDA
PRINTCR = $FC62
;
ENTRY:  jsr HOME
        jsr PRHELLO
        ldx #$10
@L1:    jsr PRINTCR
        dex
        bne @L1
        ldx #$1F ; col 31
;@L2:    jsr MVRIGHT
;        dex
;        bne @L2
        jsr PRHELLO
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
HELLO:  .byt "HELLO"
