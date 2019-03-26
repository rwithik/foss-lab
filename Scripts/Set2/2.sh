#!/bin/bash

if [[ ! -d $1 ]] || [[ ! -d $2 ]]
then
	printf "Invalid Arguments\n"
	exit
fi

cp -n -r -v ${1}/* ${2}
