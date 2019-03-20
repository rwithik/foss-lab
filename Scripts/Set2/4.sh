#!/bin/bash


if [[ `diff $1 $2 | wc -l` == 0 ]]
then
	printf "Contents are same. Removing second file.\n"
	rm $2
fi
