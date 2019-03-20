#!/bin/bash


printf "Enter the word: "
read WORD

if [[ -f $1 ]]
then
	cat $1 | sed "/$WORD/d"
else
	printf "File does not exist"
fi
