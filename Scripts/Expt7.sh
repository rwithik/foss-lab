#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo -e "Wrong usage!"
	exit
fi

if [[ -f $1 ]]; then
	for name in `cat $1`; do
		if [[ $name == $2 ]]; then
			echo -e "Name already exists in list!"
			exit
		fi
	done
	echo $2 >> $1
	exit
fi

echo -e "File $1 not found!"
