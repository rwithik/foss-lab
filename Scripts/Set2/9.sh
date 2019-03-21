#!/bin/bash

printf "Enter the word: "
read WORD

for file in $@
do
    if [[ -f $file ]]
    then
        printf "File: $file\n"
        cat $file | sed "/$WORD/d"
        printf "\n\n\n"
    else
        printf "File does not exist"
    fi
done
