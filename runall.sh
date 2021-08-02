#!/bin/sh
make all
make disk

cd basicHello
make mount
echo "RUN HELLOTEST" | a2term
sleep 5

cd ../cHello
make mount
echo "BRUN CHELLO" | a2term
sleep 1

cd ../asmHello
make mount
echo "BRUN ASMHELLO" | a2term

cd ..
#make clean
