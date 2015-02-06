#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Usage $0 <file to compress>"
	exit
fi

if [ ! -f $1 ]
then
	echo "$1 is not a file"
	exit
fi

zip $1.zip $1 > /dev/null
gzip -c $1 > $1.gz
bzip2 -c $1 > $1.bz2
xz -c $1 > $1.xz


size=$(stat -c %s $1)

zip_size=$(stat -c %s $1.zip)
gzip_size=$(stat -c %s $1.gz)
bzip2_size=$(stat -c %s $1.bz2)
xz_size=$(stat -c %s $1.xz)


echo "Compression rates (frac of original):"
echo -e "zip: \c"
echo "scale=2;$zip_size/$size" | bc
echo -e "gzip: \c"
echo "scale=2;$gzip_size/$size" | bc
echo -e "bzip2: \c"
echo "scale=2;$bzip2_size/$size" | bc
echo -e "xz: \c"
echo "scale=2;$xz_size/$size" | bc


