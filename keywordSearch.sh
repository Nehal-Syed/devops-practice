#!/bin/bash


search_term="Music"
log_file="Output.txt"
if grep -q "$search_term" "$log_file"; then
	echo "Found '$search_term in $log_file"
else
	echo "No $search_term was found in $log_file"
fi


