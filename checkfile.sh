#!/bin/bash
file="myfile.txt"
if [ -f "$file" ]; then
 echo "the file "$file" is exist"
else 
 echo "the file "$file" doesnt exit"
fi
