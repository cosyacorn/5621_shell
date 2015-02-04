#!/bin/bash

echo "solution to $1 x*x + $2 x + $3 is:"

a=$1
b=$2
c=$3

term1=`expr "$2 * $2" | bc `


term2=`expr "-4 * $1 * $3" | bc`


sqroot=`expr "scale=6;sqrt($term1 + $term2)" | bc`


top1=`expr "scale=6;-$2 + $sqroot" | bc`
top2=`expr "scale=6;-$2 - $sqroot " | bc`

bottom=`expr "scale=6;2 * $1" | bc`

ans1=`expr "scale=6;$top1 / $bottom" | bc`
ans2=`expr "scale=6;$top2 / $bottom" | bc`

echo "root1 = $ans1; root2 = $ans2"
