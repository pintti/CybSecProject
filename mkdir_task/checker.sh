#!/bin/bash


# work in progress, need to figure out how the validation will happen perhaps a GH secrets?
if [ -d "./goal" ]; then
    echo "$flag"
else
    echo "The goal directory does not exist."
fi
