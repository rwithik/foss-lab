#!/bin/bash

if [[ ! -f $1 ]] || [[ ! -f $2 ]]
then
	printf "Invalid Arguments\n"
	exit
fi

if [[ `diff $1 $2 | wc -l` == 0 ]]
then
	printf "Contents are same. Removing second file.\n"
	rm $2
fi
