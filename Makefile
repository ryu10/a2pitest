.PHONY: all clean mostlyclean disk

all clean mostlyclean disk: 
#	@$(MAKE) -C asmHello --no-print-directory $@
	@$(MAKE) -C asmHello $@
	@$(MAKE) -C basicHello $@
	@$(MAKE) -C cHello $@
