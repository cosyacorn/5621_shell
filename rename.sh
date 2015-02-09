#!/bin/bash

#Check usage
if [ $# -ne 1 ]
then
	echo "Correct usage: $0 <directory>"
	exit
fi

#check for directory
if [ ! -d $1 ]
then
  echo "Directory does not exist"
  exit
fi

#change to all caps
cd $1	
`rename 'y/a-z/A-Z/' *`
cd ..	
