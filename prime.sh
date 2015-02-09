#!/bin/bash

# increment over the odds (even clearly can't be prime)
for j in `seq 40001 2 41999`;
do
	num=$j
	#set upper limit for factors we need to check
	sqroot=`expr "sqrt($num)" | bc `
	i=3

	#incremnet i (odds again) up to this limit
	while [ $i -lt $sqroot ]
	do
		#prime alg from earlier c assignment
		if [ `expr $num % $i` -eq 0 ]
		then
			break
		fi
		i=`expr $i + 2`

		if [ `expr $sqroot - $i` -eq 0 ]
		then
			echo "$num is prime"
		fi
	done

done
