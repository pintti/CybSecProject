#!/bin/bash

# Function to generate random text
generate_random_text() {
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 20
}

# Generate 2000 lines of base64-encoded strings starting with CSP{
for i in {1..2000}; do
    random_text=$(generate_random_text)
    encoded_text=$(echo "CSP{$random_text}" | base64)
    echo $encoded_text >> encoded_data.txt
done

