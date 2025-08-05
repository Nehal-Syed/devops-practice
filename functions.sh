#!/bin/bash


## writing a function
check_even_odd() {
	if [ $(( $1 % 2)) -eq 0 ]; then
		echo "$1 is even"
	else
		echo "$1 is odd"
	fi
}

## calling the function
check_even_odd 3
check_even_odd 8


## calling function in a loop
i=1
while [ "$i" -le 5 ]; do
	check_even_odd "$i"
	i=$((i + 1))
done
