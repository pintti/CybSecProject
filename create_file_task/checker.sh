#!/bin/bash

if [ -d "./documents" ]; then
    if [ -f "./documents/file.txt" ]; then
        flag=$(cat ./documents/file.txt | base64 -d) 
        echo "This is the answer: CSP{$flag}"
    else
        echo "The file doesnt exist."
    fi
else
    echo "The goal directory does not exist."
fi
