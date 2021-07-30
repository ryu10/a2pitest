AC.SH := $(shell which ac.sh)

CWD := $(shell pwd)

A2PI_HOME = /usr/share/a2pi/
A2PI_VDRIVE2 = $(A2PI_HOME)A2VD2.PO
A2STOPVD = /usr/bin/a2stopvd
A2STARTVD = /usr/bin/a2startvd

DISKIMAGE = basicTest.po
BASICSRC = helloTest.bas
BASICPROG = HELLOTEST

CREATEDISK = if [ ! -e $(DISKIMAGE) ]; then $(AC.SH) -pro140 $(DISKIMAGE) NONAME ; fi

.PHONY: remountVD2

all: $(DISKIMAGE) remountVD2
#all: $(DISKIMAGE)

$(DISKIMAGE): $(BASICSRC)
	$(CREATEDISK)
	$(AC.SH) -d $(DISKIMAGE) $(BASICPROG)
	$(AC.SH) -bas $(DISKIMAGE) $(BASICPROG) < $(BASICSRC)

# How to re-link the disk image file
# as2stopvd
# rm A2VD2.PO
# ln -s /home/pi/github/a2pitest/basicHello/basicTest.po  ./A2VD2.PO
# a2startvd

remountVD2:
	@echo "starting remountVD2."
	/usr/bin/a2stopvd
	@echo "A2VD2.PO unmounted."
	rm $(A2PI_VDRIVE2)
	ln -s $(CWD)/$(DISKIMAGE) $(A2PI_VDRIVE2)
	$(A2STARTVD)
	@echo "A2VD2.PO remounted."
