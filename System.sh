#!/bin/bash


echo "This informatio is provided by System.sh. Program starts now"

echo "Hi, $USER"

echo "Today's date is `date`, the week's `date +"%V"`."
echo

echo "These are the users currently connected:"
w | cut -d " " -f 1 - | grep -v USER | sort -u
echo

echo "This is `uname -s` running on a `uname -m` processor."
echo

echo "This is uptime information"
uptime
