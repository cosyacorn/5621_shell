#!/bin/bash

FILE=$1

if test -e $FILE; then
	echo "$FILE exists"
else
	echo "$FILE not found"
	exit 1
fi

count=`grep '#!/bin/bash' $FILE | wc -l`

if [ $count -ne 0 ]
then
	echo "The contents of $FILE is:"
	grep '#!/bin/bash' $FILE
	grep -v '#' $FILE
else
	echo "$FILE is not a shell script"
fi
