#!/bin/bash

if [[ -f $1 ]]
then
  printf "File does not exist"
fi

printf "%-15s" "Permission" "Size" "Filename" "Last modified"
printf "\n"
ls -l $1 | awk '{printf "%-15s%-15s%-15s%-15s\n", $1, $5, $9, $8}'
