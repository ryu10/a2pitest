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

A2PI_HOME = /usr/share/a2pi/
A2PI_VDRIVE2 = $(A2PI_HOME)A2VD2.PO
A2STOPVD = /usr/bin/a2stopvd
A2STARTVD = /usr/bin/a2startvd

LOADADDR = 0x2000
LDCONFIG = apple2bin.cfg
LDFLAGS = -C $(LDCONFIG) 

.PHONY: all mostlyclean clean install disk remountVD2

%: %.c
%: %.s

# .c.o:
# 	$(CC) $(CFLAGS) -Ors --codesize 500 -T -g -t $(SYS) $<
# 	$(AS) $(<:.c=.s) -t $(SYS)

.s.o:
	$(AS) $(ASFLAGS) $<

.PRECIOUS: %.o

# .o:


.o:
	$(LD) $(LDFLAGS) -o $@ -m $@.map $^ 

EXELIST = \
  hello

PROGNAME = ASMHELLO

all: $(EXELIST)

hello: hello.o

mostlyclean:
	@$(DEL) *.lbl *.map *.o 2> $(NULLDEV)

clean: mostlyclean
	@$(DEL) $(EXELIST) 2> $(NULLDEV)

DISKIMAGE = asmhello.po

CREATEDISK = if [ ! -e $(DISKIMAGE) ]; then $(AC.SH) -pro140 $(DISKIMAGE) NONAME ; fi

$(DISKIMAGE): $(EXELIST)
	$(CREATEDISK)
	$(AC.SH) -d $(DISKIMAGE) $(PROGNAME)
	$(AC.SH) -p $(DISKIMAGE) $(PROGNAME) BIN $(LOADADDR) < $(EXELIST)

remountVD2:
	@echo "starting remountVD2."
	/usr/bin/a2stopvd
	@echo "A2VD2.PO unmounted."
	rm $(A2PI_VDRIVE2)
	ln -s $(CWD)/$(DISKIMAGE) $(A2PI_VDRIVE2)
	$(A2STARTVD)
	@echo "A2VD2.PO remounted."
