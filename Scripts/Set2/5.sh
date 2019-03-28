#!/bin/bash

if [[ ! -f $1 ]]
then
	printf "File does not exist\n"
	exit
fi

echo "Vowels : `cat $1 | tr '[a-z]' '[A-Z]' | egrep -o "[AEIOU]" | wc -l`"
echo "Symbols : `cat $1 | tr '[a-z]' '[A-Z]' | egrep -o "[.!''"",()]" | wc -l`"
echo "Characters : $(cat $1 | wc -c)"
echo "Blank lines : $(grep  -c '^$' $1)"
echo "Lines : $(cat $1 | wc -l )"
