#!/bin/awk

BEGIN{
	print "Enter the basic pay:"
	getline < "/dev/tty"
	totalSal = $1
	if ($1 < 10000)
		totalSal = 0.45 * $1 + 0.15 * $1 + $1
	else 
		totalSal = 0.50 * $1 + 0.20 * $1 + $1
	print "Total Salary: " totalSal
}
