#!/bin/bash

if [ "$1" == "clean" ]; then
    rm -rf div.lst div.o div
    exit
fi

os=$(uname -o)
if [[ "$os" == *"Linux"* ]]; then
    nasm -f elf64 -l div.lst div.asm
elif [[ "$os" == *"Darwin"* ]]; then
    nasm -f macho64 -l div.lst div.asm
fi
gcc -m64 -o div div.o
