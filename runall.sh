#!/bin/sh
make all
make disk

cd basicHello
make mount
echo "RUN HELLOTEST,S2,D2" | a2term
sleep 4

cd ../cHello
make mount
echo "BRUN CHELLO" | a2term
sleep 2

cd ../asmHello
make mount
echo "BRUN ASMHELLO" | a2term

cd ..
#make clean
