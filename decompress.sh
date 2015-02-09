#!/bin/bash

#check if there's a argument
if [ $# -ne 1 ] 
then
    echo "Usage: $0 <filename to decompress>"
    exit
fi

#check if argument is a file
if [ ! -f $1 ]
then
  echo "File does not exist"
  exit
fi

#check to see the compressed file extention and then decompress
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
