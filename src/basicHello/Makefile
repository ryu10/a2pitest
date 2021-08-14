# Makefile for basicHello

# commands and params
DEL = $(RM)
NULLDEV = /dev/null
AC.SH = $(shell which ac.sh)
CWD = $(shell pwd)
DISKNAME = basicTest.po
BASICSRC = src/helloTest.bas
BASICPROG = HELLOTEST

# phony targets
.PHONY: all clean disk

# all
all disk: $(DISKNAME) 

# disk
CREATEDISK = if [ ! -e $(DISKNAME) ]; then $(AC.SH) -pro140 $(DISKNAME) NONAME ; fi

$(DISKNAME): $(BASICSRC)
	$(CREATEDISK)
	$(AC.SH) -d $(DISKNAME) $(BASICPROG)
	$(AC.SH) -bas $(DISKNAME) $(BASICPROG) < $(BASICSRC)

# clean
mostlyclean:

clean: 
	@$(DEL) $(DISKNAME) 2> $(NULLDEV)
