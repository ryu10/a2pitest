# A2PiTest

An experimantal remote development environment for Apple IIe using Apple II Pi + VSCode + CC65.

![VSCode remote](a2pitest_demo.png)

Clone this repo, `a2pitest`, into a Raspberry Pi (3A/B+ recommended) which is connected to the [Apple II Pi](https://github.com/dschmenk/apple2pi). By setting up [VSCode Remote Development](https://code.visualstudio.com/docs/remote/remote-overview) on the Raspbery Pi, you can develop Apple II software in Basic, C and Assembly language, from your modern OS computer (Win/Mac/Linux).

It supports auto build with [cc65-toolchain-example](https://github.com/fo-fo/cc65-toolchain-example.git).

Note: after cloning this repository, run the following command to download the submodule:

```
git submodule update -i
```

(```git clone``` does not do this automatically)

## Prerequisites

Install the following on the Raspberry Pi which is connected to the Apple II Pi card:

* [Apple II Pi card & software](https://github.com/dschmenk/apple2pi)
* [CC65](https://github.com/cc65/cc65)
* [AppleCommander](https://github.com/AppleCommander/AppleCommander)
* [VSCode](https://code.visualstudio.com/download) [Remote Development](https://code.visualstudio.com/docs/remote/remote-overview)

## Quick Run

```
git clone https://github.com/ryu10/a2pitest.git
cd a2pitest
./runall.sh
./runall.sh cleanall
```

## Source Directories

* `src/basicHello` : Helloworld sample in Applesoft Basic
* `src/cHello` : Helloworld sample in  C (CC65)
* `src/asmHello` : Helloworld sample in 6502 Assembly language (CA65)

