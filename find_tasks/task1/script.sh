#!/bin/bash

# Function to create random files
create_random_files() {
  local num_files=$1
  for ((file=1; file<=$num_files; file++)); do
    # Use /dev/urandom to generate random data
    random_data=$(head -c 1024 < /dev/urandom | base64)

    # Create files with random data
    touch "file_$file.txt"
    echo "$random_data" > "file_$file.txt"
  done
}

# Create main directory
main_directory="main_directory"
mkdir "$main_directory"
cd "$main_directory" || exit

# Set the number of subdirectories
num_subdirectories=8

# Set the number of files in each subdirectory
num_files_per_directory=20

for ((sub=1; sub<=$num_subdirectories; sub++)); do
  # Create subdirectory
  sub_directory="subdirectory_$sub"
  mkdir "$sub_directory"
  cd "$sub_directory" || exit

  # Create random files in the current subdirectory
  create_random_files "$num_files_per_directory"

  # Create nested subdirectory
  nested_sub_directory="nested_subdirectory"
  mkdir "$nested_sub_directory"
  cd "$nested_sub_directory" || exit

  # Create random files in the nested subdirectory
  create_random_files "$num_files_per_directory"

  cd ..
  cd ..
done

echo "Random directory structure created successfully."
