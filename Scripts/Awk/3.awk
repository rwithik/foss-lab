#!/bin/awk

BEGIN{
	sum = 0
}
{
	sum = sum + $2;
	subject[$1] = subject[$1] + $2;
	}
END{
	printf "Total = " sum "\n"
	for(word in subject) printf word " = " subject[word] "\n"
}
