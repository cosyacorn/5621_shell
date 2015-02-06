#!/bin/bash

gcc -o simple_mc simple_mc.c -lm

for i in $(seq 100)
do
./simple_mc $RANDOM > /dev/null
done

rm simple_mc
