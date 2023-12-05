#!/bin/bash

for i in {1..6677}; do
    echo "$(openssl rand -base64 32)"
done >> file.txt

echo "CSP{YOUFOUNDTHETEXT}" >> file.txt

for i in {6679..10000}; do
    echo "$(openssl rand -base64 32)"
done >> file.txt

