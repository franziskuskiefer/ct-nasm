#!/bin/bash

if [ -z $1 ]; then
  echo "please provide an upper limit"
  exit 1
fi

i=1
while [[ $i -le $1 ]]; do
  ./div $i 0x800000000000 10000000
  (( i=$i+1 ))
done

