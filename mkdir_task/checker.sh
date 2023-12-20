#!/bin/bash

if [ -d "./goal" ]; then
    flag=$(echo "Q1JFQVRFRDRGSUxF" | base64 -d) 
    echo "This is the answer: CSP{$flag}"
else
    echo "The goal directory does not exist."
fi
