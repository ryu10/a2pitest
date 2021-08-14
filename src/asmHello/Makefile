CC65_HOME = /usr/local/

AS = $(CC65_HOME)/bin/ca65
CC = $(CC65_HOME)/bin/cc65
CL = $(CC65_HOME)/bin/cl65
LD = $(CC65_HOME)/bin/ld65

DEL = $(RM)
NULLDEV = /dev/null

SYS = apple2-system
CONFIG = apple2-asm.cfg

AC.SH = ac.sh

CWD := $(shell pwd)

LOADADDR = 0x2000
LDCONFIG = apple2bin.cfg
LDFLAGS = -C $(LDCONFIG) 

.PHONY: all mostlyclean clean disk

%: %.c
%: %.s

# .c.o:
# 	$(CC) $(CFLAGS) -Ors --codesize 500 -T -g -t $(SYS) $<
# 	$(AS) $(<:.c=.s) -t $(SYS)

.s.o:
	$(AS) $(ASFLAGS) $<

.PRECIOUS: %.o

.o:
	$(LD) $(LDFLAGS) -o $@ -m $@.map $^ 

EXELIST = \
  hello

PROGNAME = ASMHELLO
DISKIMAGE = asmhello.po

all: $(EXELIST)

hello: hello.o

mostlyclean:
	@$(DEL) *.lbl *.map *.o 2> $(NULLDEV)

clean: mostlyclean
	@$(DEL) $(DISKIMAGE) $(EXELIST) 2> $(NULLDEV)

CREATEDISK = if [ ! -e $(DISKIMAGE) ]; then $(AC.SH) -pro140 $(DISKIMAGE) NONAME ; fi

disk: $(DISKIMAGE)

$(DISKIMAGE): $(EXELIST)
	$(CREATEDISK)
	$(AC.SH) -d $(DISKIMAGE) $(PROGNAME)
	$(AC.SH) -p $(DISKIMAGE) $(PROGNAME) BIN $(LOADADDR) < $(EXELIST)
