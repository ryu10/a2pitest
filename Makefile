.PHONY: all clean mostlyclean disk

all clean mostlyclean disk: 
	@$(MAKE) -C asmHello $@
	@$(MAKE) -C basicHello --no-print-directory $@
	@$(MAKE) -C cHello --no-print-directory $@
