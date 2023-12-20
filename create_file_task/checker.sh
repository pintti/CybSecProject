#!/bin/bash

if [ -d "./goal" ]; then
    if [ -f "./goal/file.txt" ]; then
        flag=$(cat ./goal/file.txt | base64 -d) 
        echo "This is the answer: CSP{$flag}"
    else
        echo "The file doesnt exist."
    fi
else
    echo "The goal directory does not exist."
fi
