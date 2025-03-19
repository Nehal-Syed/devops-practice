#!/bin/bash

echo "today is" `date`

echo -e "\nenter path to directory"
read the_path

echo -e "\n your path has the following files and folder"
ls $the_path


