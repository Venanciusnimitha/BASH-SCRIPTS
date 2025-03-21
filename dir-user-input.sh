#!/bin/bash

# Prompt for directory name
echo "Enter the directory name: "
read dir

# Prompt for file names
echo "Enter file names (space-separated): "
read -a files

# Prompt for directory permissions
echo "Enter permission for directory: "
read per1

# Create the directory
mkdir "$dir"

# Apply permissions to the directory
chmod "$per1" "$dir"

# Create the files inside the directory
for file in "${files[@]}"; do
    touch "$dir/$file"
done

# Prompt for file permissions
echo "Give permission for files: "
read per2

# Apply permissions to all files
for file in "${files[@]}"; do
    chmod "$per2" "$dir/$file"
done
