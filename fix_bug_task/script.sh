#!/bin/bash

# prints the current directory
pwd

file_name="dictionary.txt"

# check that the file exists
if [ ! -f "$file_name" ]; then
    echo "Error: File not found!"
    exit 1
fi

# count the number of lines in specified file
wc -l $file_name
