# Makefile for disk / mount
# cc/as/ld are done in CMake/ninja via ./build.sh

DEL = $(RM)
NULLDEV = /dev/null

SYS = apple2

AC.SH = ac.sh

CWD := $(shell pwd)

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
