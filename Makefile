.PHONY: all clean mostlyclean disk

all clean mostlyclean disk: 
#	@$(MAKE) -C src/asmHello --no-print-directory $@
	@$(MAKE) -C src/asmHello $@
	@$(MAKE) -C src/basicHello $@
	@$(MAKE) -C src/cHello $@
