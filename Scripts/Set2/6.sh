#!/bin/bash

if [[ ! -f $1 ]]
then
	printf "File does not exist"
fi

cat $1 | sort | uniq
