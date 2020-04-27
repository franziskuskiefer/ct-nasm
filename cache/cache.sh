#!/bin/bash

if [ "$1" == "clean" ]; then
    rm -rf cache.lst cache.o cache cachec.o
    exit
fi

nasm -f elf64 -l cache.lst cache.asm
gcc -m64 -g -o cache cache.o cache.c
