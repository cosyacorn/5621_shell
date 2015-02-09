#!/bin/bash

if [ $# -ne 3 ]
then
	echo "usage: $0 <num> <num> <num>"
	exit
fi

echo "solution to $1 x*x + $2 x + $3 is:"

#set values
a=$1
b=$2
c=$3

#set the terms for the minus b quadratic formula

#b squared
term1=`expr "$2 * $2" | bc `

#minus 4 a c
term2=`expr "-4 * $1 * $3" | bc`

#check for complex roots
if [ `expr "$term1 + $term2" | bc` -lt 0 ]
then
	echo "This equation has complex roots"
	exit
fi


#calc sq root
sqroot=`expr "scale=6;sqrt($term1 + $term2)" | bc`

#do the plus minus bit
top1=`expr "scale=6;-$2 + $sqroot" | bc`
top2=`expr "scale=6;-$2 - $sqroot " | bc`


bottom=`expr "scale=6;2 * $1" | bc`

#divide by denominator
ans1=`expr "scale=6;$top1 / $bottom" | bc`
ans2=`expr "scale=6;$top2 / $bottom" | bc`


#print roots
echo "root1 = $ans1; root2 = $ans2"


