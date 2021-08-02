DEL = $(RM)
NULLDEV = /dev/null

AC.SH := $(shell which ac.sh)

CWD := $(shell pwd)

A2PI_HOME = /usr/share/a2pi/
A2PI_VDRIVE2 = $(A2PI_HOME)A2VD2.PO
A2STOPVD = /usr/bin/a2stopvd
A2STARTVD = /usr/bin/a2startvd

DISKNAME = basicTest.po
BASICSRC = helloTest.bas
BASICPROG = HELLOTEST

CREATEDISK = if [ ! -e $(DISKNAME) ]; then $(AC.SH) -pro140 $(DISKNAME) NONAME ; fi

.PHONY: all mount remountVD2 clean disk

all disk: $(DISKNAME) 

mostlyclean:

clean: 
	@$(DEL) $(DISKNAME) 2> $(NULLDEV)

$(DISKNAME): $(BASICSRC)
	$(CREATEDISK)
	$(AC.SH) -d $(DISKNAME) $(BASICPROG)
	$(AC.SH) -bas $(DISKNAME) $(BASICPROG) < $(BASICSRC)

mount: remountVD2

remountVD2:
	@echo "starting remountVD2."
	/usr/bin/a2stopvd
	@echo "A2VD2.PO unmounted."
	rm $(A2PI_VDRIVE2)
	ln -s $(CWD)/$(DISKNAME) $(A2PI_VDRIVE2)
	$(A2STARTVD)
	@echo "A2VD2.PO remounted."
