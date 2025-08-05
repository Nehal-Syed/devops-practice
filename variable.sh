#!/bin/bash


name="nehal"
age=22
learning='devops'

echo "yo! name is $name, ages about $age, and learning $learning"
echo "and dates $(date)" #date is built in func so written in brackets

echo "enter you username: "
read username #take input on runtime by user
echo "okay you're $username"

# another way of taking input
read -p "enter age " age
echo " so you're $age years of age"
