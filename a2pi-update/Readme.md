# A2PiTest 

Apple II remote development with Apple II Pi + Applesoft Basic + CC65.

This repo, `a2pitest`, should be placed on a Raspberry Pi (3+ or 4 recommended) connected to [Apple2Pi](https://github.com/dschmenk/apple2pi). By setting up [VSCode Remote Development](https://code.visualstudio.com/docs/remote/remote-overview) on the Raspbery Pi, you can develop Apple II software, in Basic, C or Assembly language, from your modern PC (Win/Mac/Linux).

## Subdirs

`basicHello` : Hello sample program in Applesoft Basic
`cHello` : Hello sample program in  C (CC65)
`asmHello` : Hello sample program in 6502 Assembly language (CA65)

## Prerequisites

Install the following software on a Raspberry Pi connected to Apple2Pi:

* [Apple2Pi card & software](https://github.com/dschmenk/apple2pi)
* [CC65](https://github.com/cc65/cc65)
* (optional) [VSCode](https://code.visualstudio.com/download) Remote Development


## Quick Run
```
(TBD) installvdtools
cd a2pitest ; ./runall.sh
make clean
```