#!/bin/bash

file_array=("apples" "oranges" "app" "file" "document" "music" "video" "archive")

type_array=("txt" "mp4" "zip" "mp3" "csv" "doc")

# Function to create random files
create_random_files() {
  local num_files=$1
  for ((file=1; file<=$num_files; file++)); do
    # Use /dev/urandom to generate random data
    random_data=$(head -c 1024 < /dev/urandom | base64)

    random_number=$((1 + RANDOM % 8))
    random_number_2=$((1 + RANDOM % 6))

    # Create files with random data
    touch "${file_array[$random_number]}.${type_array[$random_number_2]}"
    echo "$random_data" > "${file_array[$random_number]}.${type_array[$random_number_2]}"
  done
}

# Create main directory
main_directory="main_directory"
mkdir "$main_directory"
cd "$main_directory" || exit

# Set the number of subdirectories
num_subdirectories=8
sub_directories=("documents" "images" "notes" "reports" "scripts" "data" "presentations" "music") 

# Set the number of files in each subdirectory
num_files_per_directory=20

for ((sub=1; sub<=$num_subdirectories; sub++)); do
  # Create subdirectory
  sub_directory="${sub_directories[$sub]}"
  echo "THIS IS SUBDIRECTORY: $sub_directory"
  mkdir "$sub_directory"
  cd "$sub_directory" || exit

  # Create random files in the current subdirectory
  create_random_files "$num_files_per_directory"
  cd ..
done

echo "Random directory structure created successfully."
