#!/bin/bash

if [[ ! -f $1 ]] || [[ ! -f $2 ]]
then
	printf "Invalid Arguments\n"
	exit
fi

PERM1=`ls -l $1 | awk '{print $1}'`
PERM2=`ls -l $2 | awk '{print $1}'`

if [[ $PERM1 == $PERM2 ]]
then
	printf "Equal\n"
else
	ls -l $1 | awk '{print $1 " " $9}'
	ls -l $2 | awk '{print $1 " " $9}'
fi
