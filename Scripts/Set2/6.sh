#!/bin/bash

if [[ ! -f $1 ]]
then
	printf "File does not exist"
fi

awk '!seen[$0]++' $1
