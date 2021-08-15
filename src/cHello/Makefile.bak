# Makefile for cHello
# cc/as/ld are done in CMake/ninja via ./build.sh

# commands and params
DEL = $(RM)
NULLDEV = /dev/null
SYS = apple2
AC.SH = ac.sh
CWD = $(shell pwd)
STARTADDR = 0x4000
PROGNAME = CHELLO
DISKIMAGE = chello.po

# phony targets
.PHONY: all mostlyclean clean install disk 

# target file list
EXELIST = \
  build/${PROGNAME}

# all
all: $(EXELIST)

${EXELIST}:
	./build.sh

# clean
mostlyclean:
	@$(DEL) *.lbl *.map *.o 2> $(NULLDEV)

clean: mostlyclean
	@$(DEL) $(EXELIST) $(DISKIMAGE) 2> $(NULLDEV)
	./build.sh clean
	rm -rf ./build

# disk
CREATEDISK = if [ ! -e $(DISKIMAGE) ]; then $(AC.SH) -pro140 $(DISKIMAGE) NONAME ; fi

disk: $(DISKIMAGE)

$(DISKIMAGE): $(EXELIST)
	$(CREATEDISK)
	$(AC.SH) -d $(DISKIMAGE) $(PROGNAME)
	$(AC.SH) -as $(DISKIMAGE) $(PROGNAME) BIN $(STARTADDR) < $(EXELIST)
