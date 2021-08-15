.PHONY: all clean cleanall disk

all clean cleanall disk: 
#	@$(MAKE) -C src/asmHello --no-print-directory $@
#	@$(MAKE) -C src/asmHello $@
	src/asmHello/build.sh $@
	@$(MAKE) -C src/basicHello $@
#	@$(MAKE) -C src/cHello $@
	src/cHello/build.sh $@
