# Makefile for disk / mount
# cc/as/ld are done in CMake/ninja via ./build.sh

DEL = $(RM)
NULLDEV = /dev/null

SYS = apple2

AC.SH = ac.sh

CWD := $(shell pwd)

A2PI_HOME = /usr/share/a2pi/
A2PI_VDRIVE2 = $(A2PI_HOME)A2VD2.PO
A2STOPVD = /usr/bin/a2stopvd
A2STARTVD = /usr/bin/a2startvd

STARTADDR = 0x4000
LDFLAGS_apple2 = --start-addr $(STARTADDR)

.PHONY: all mostlyclean clean install disk 

EXELIST = \
  build/CHELLO

PROGNAME = CHELLO
DISKIMAGE = chello.po

all: $(EXELIST)

${EXELIST}:
	./build.sh


mostlyclean:
	@$(DEL) *.lbl *.map *.o 2> $(NULLDEV)

clean: mostlyclean
	@$(DEL) $(EXELIST) $(DISKIMAGE) 2> $(NULLDEV)
	./build.sh clean
	rm -rf ./build

disk: $(DISKIMAGE)

CREATEDISK = if [ ! -e $(DISKIMAGE) ]; then $(AC.SH) -pro140 $(DISKIMAGE) NONAME ; fi

$(DISKIMAGE): $(EXELIST)
	$(CREATEDISK)
	$(AC.SH) -d $(DISKIMAGE) $(PROGNAME)
	$(AC.SH) -as $(DISKIMAGE) $(PROGNAME) BIN $(STARTADDR) < $(EXELIST)
