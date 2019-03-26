#!/bin/bash

if [[ ! -f $1 ]]
then
	printf "File does not exist"
	exit
fi

n=`wc -l $1 | cut -d " " -f 1`
i=1

while [ $i -le $n ]
do
    LINE=`sed -n "$i p" $1`
    CHARCOUNT=`echo $LINE | wc -c | cut -d " " -f 1`
    while [ $CHARCOUNT -ge 40 ]
    do
        EXT=`echo $LINE | cut -c 41-`
        LINE=`echo $LINE | cut -c 1-40`
        echo "$LINE \\"
        LINE=$EXT
        CHARCOUNT=`echo $EXT | wc -c | cut -d " " -f 1`
    done
	echo "$LINE"
	i=`expr $i + 1`
done
