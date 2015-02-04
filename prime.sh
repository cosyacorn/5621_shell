#!/bin/bash

for j in `seq 40001 2 41999`;
do
	num=$j
	sqroot=`expr "sqrt($num)" | bc `
	#echo "num = $sqroot"
	i=3

	while [ $i -lt $sqroot ]
	do
		if [ `expr $num % $i` -eq 0 ]
		then
			break
		fi
		i=`expr $i + 2`
		#echo "$i"

		if [ `expr $sqroot - $i` -eq 0 ]
		then
			echo "$num is prime"
		fi
	done

done
