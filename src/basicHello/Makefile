DEL = $(RM)
NULLDEV = /dev/null

AC.SH := $(shell which ac.sh)

CWD := $(shell pwd)

DISKNAME = basicTest.po
BASICSRC = helloTest.bas
BASICPROG = HELLOTEST

CREATEDISK = if [ ! -e $(DISKNAME) ]; then $(AC.SH) -pro140 $(DISKNAME) NONAME ; fi

.PHONY: all clean disk

all disk: $(DISKNAME) 

mostlyclean:

clean: 
	@$(DEL) $(DISKNAME) 2> $(NULLDEV)

$(DISKNAME): $(BASICSRC)
	$(CREATEDISK)
	$(AC.SH) -d $(DISKNAME) $(BASICPROG)
	$(AC.SH) -bas $(DISKNAME) $(BASICPROG) < $(BASICSRC)

