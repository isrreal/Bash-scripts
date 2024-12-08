#!/bin/bash
# this code reads the sites in file "urls.txt" and access the homepage for all these, and store these headers in individual text files.

readarray sites < urls.txt

mkdir -p output

for site in ${sites[@]}; do
    domain=$(echo "$site" | cut -d '.' -f 2)
    echo "$(curl --head $site)" > "./output/${domain}.txt"
done
