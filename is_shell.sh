#!/bin/bash

#check if there's a argument
if [ $# -ne 1 ] 
then
    echo "Usage: $0 <filename to decompress>"
    exit
fi

#check if argument is a file
FILE=$1

if test -e $FILE; then
	echo "$FILE exists"
else
	echo "$FILE not found"
	exit 
fi

#look for the bash script declaration 
count=`grep '#!/bin/bash' $FILE | wc -l`

if [ $count -ne 0 ]
then
	echo "The contents of $FILE is:"
	grep '#!/bin/bash' $FILE
	grep -v '#' $FILE
else
	echo "$FILE is not a shell script"
fi
