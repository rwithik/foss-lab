#!/usr/bin/awk
BEGIN{
	printf "Enter the date: "
	getline date < "/dev/tty"
}
END{
	print date
}

