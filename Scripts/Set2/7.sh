#!/bin/bash

ls -1 > f
exec < f
while read file
do
	if [[ -r $file && -w $file && -x $file ]]
	then
		printf "$file\n"
	fi
done
