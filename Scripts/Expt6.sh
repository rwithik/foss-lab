#!/bin/bash

echo -e "1. Addition\n2. Subtraction\n3. Multiplication\n4. Division"
echo -e "Enter your choice[1-4]: "
read CHOICE

case $CHOICE in
	1 )
		echo -e "Enter two numbers: "
		read A
		read B
		echo -e "Result: $[$A+$B]"
	;;
	2 )
		echo -e "Enter two numbers: "
		read A
		read B
		echo -e "Result: $[$A-$B]"
	;;
	3 )
		echo -e "Enter two numbers: "
		read A
		read B
		echo -e "Result: $[$A*$B]"
	;;
	4 )
		echo -e "Enter two numbers: "
		read A
		read B
		if [[ $B -eq 0 ]]; then 
			echo -e "Division By Zero"
			exit
		fi
		echo -e "Result: $[$A/$B]"
	;;
	* )
		echo -e "Invlid Option. Try Again."
	;;
esac
