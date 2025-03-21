#!/bin/bash
dir="directory"
file1="file1.txt"
file2="file2.txt"
mkdir "/home/ubuntu/$dir" #make directory
chmod 755 "$dir" #give permission to the directory
touch "$dir/$file1" #create a file1 in the directory
touch "$dir/$file2" #create file2 in the directory
chmod 755 "$dir/$file1" # give permission to the file
chmod 755 "$dir/$file2" #give permission for thef ile2