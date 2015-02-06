#!/bin/bash

if [ $# -ne 1 ] 
then
    echo "Usage: $0 <filename to decompress>"
    exit
fi


if [ ! -f $1 ]
then
  echo "File does not exist"
  exit
fi

if [ $1 == *.zip ]
then
	unzip $1 > /dev/null
elif [ $1 == *.gz ]
then
	gzip -d $1
elif [ $1 == *.bz2 ]
then
	bzip2 -d $1
elif [ $1 == *.xz ]
then
	xz -d $1
else
	echo "File extension not supported"
fi
