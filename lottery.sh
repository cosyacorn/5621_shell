#!/bin/bash


for j in `seq 6`;
do
	num1=`expr "1 + ($RANDOM % 45)" | bc`
	echo "$num1"
done


