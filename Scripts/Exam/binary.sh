#!/bin/bash

echo -n "Input: "
read a	 #Read the input

b=""

while [[ $a -gt 0 ]]
do
	b="$(( $a%2 ))"$b	# Prepend the remainder to b
	a=$(( $a/2 ))		# Floor division of a by 2
done

echo "Output: $b"
