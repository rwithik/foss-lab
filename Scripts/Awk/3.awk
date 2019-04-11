#!/bin/awk

BEGIN{
	sum = 0
}
{sum = sum + $2 }
END{
	printf "Total = " sum "\n"
}
