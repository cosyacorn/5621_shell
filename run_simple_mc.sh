#!/bin/bash

#compile c code
gcc -o simple_mc simple_mc.c -lm

#check for user given number of runs
if [ $# -eq 1 ]
then
	runs=$1
else
	runs=100
fi

#set count of yes to zero
n_yes=0

#run the executable the specified no of times
for i in $(seq $runs)
do
	if ./simple_mc $RANDOM | grep y > /dev/null
	then
		n_yes=`expr $n_yes + 1` #count yes results
	fi
done

#calculate the fraction of yes results
echo "Fraction of yes answers:"
echo "scale=2;$n_yes/$runs" | bc 

#delete the executable created at the start
rm simple_mc
