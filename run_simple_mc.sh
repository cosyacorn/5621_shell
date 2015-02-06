#!/bin/bash

gcc -o simple_mc simple_mc.c -lm

if [ $# -eq 1 ]
then
	runs=$1
else
	runs=100
fi

n_yes=0

for i in $(seq $runs)
do
	if ./simple_mc $RANDOM | grep y > /dev/null
	then
		n_yes=`expr $n_yes + 1`
	fi
done
echo "Fraction of yes answers:"
echo "scale=2;$n_yes/$runs" | bc 

rm simple_mc
