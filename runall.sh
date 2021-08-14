#!/bin/sh
make all
make disk

cd src/basicHello
a2setvd 2 `pwd`/basicTest.po
echo "RUN HELLOTEST,S2,D2" | a2term
sleep 2

cd ../cHello
a2setvd 2 `pwd`/chello.po
echo "BRUN CHELLO" | a2term
sleep 2

cd ../asmHello
a2setvd 2 `pwd`/asmhello.po
echo "BRUN ASMHELLO" | a2term

cd ..
#make clean
