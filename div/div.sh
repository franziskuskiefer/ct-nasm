#!/bin/bash

if [ "$1" == "clean" ]; then
    rm -rf div.lst div.o div
    exit
fi

nasm -f elf64 -l div.lst div.asm
gcc -m64 -o div div.o
