#!/bin/bash

echo -e "Enter the operator:\n\
		+ for addition\n\
		- for subtraction\n\
		* for multiplication\n\
		/ for division\n\
		% for modulus"

read CHOICE
if [[ $CHOICE == '+' ]] || [[ $CHOICE == '-' ]]\
		|| [[ $CHOICE == '*' ]] || [[ $CHOICE == '/' ]]\
		|| [[ $CHOICE == '%' ]]
then
	echo -e "Enter two numbers:"
	read A
	read B
	echo -e "Result: $[${A}${CHOICE}${B}]"
else
	echo -e "Invalid Choice"
fi
