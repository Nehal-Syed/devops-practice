#!/bin/bash


# this is for loop

for((i=1; i<=5; i++))
do
	echo "nehal$i"
done

# this is while loop

num=1

while [ "$num" -le 5 ]; do
	if (( num % 2 == 0 ));	then 
		echo "$num is even"
	else
		echo "$num is odd"
	fi
	((num++))
done
