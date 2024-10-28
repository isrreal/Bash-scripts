#!/bin/bash
# this script creates a file that were named in "files.txt"

readarray -t files < files.txt

# @ for expand all elements of a array
# uses doubles quotes to protect the array of the word spliting

for file in "${files[@]}" ; do
    if [ -f  "$file" ]; then
        echo "$file already exists"
    else
        touch "$file"
        echo "$file was created"
    fi
done 
