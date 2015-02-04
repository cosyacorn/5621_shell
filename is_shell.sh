#!/bin/bash

FILE=$1

if test -e $FILE; then
	echo "$FILE exists"
else
	echo "$FILE not found"
	exit 1
fi


