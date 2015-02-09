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
echo "files in directory $1 are:"
ls
	
for file in * ; do
   basename=$(tr '[:lower:]' '[:upper:]' <<< "${file%.*}")
   newname="$basename.${file#*.}"
   mv "$file" "$newname"
done
echo "the renamed files are:"
ls
cd ..	
