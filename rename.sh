#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Correct usage: $0 <directory>"
	exit
fi

if [ ! -d $1 ]
then
  echo "Directory does not exist"
  exit
fi

cd $1	
`rename 'y/a-z/A-Z/' *`
cd ..	
