#!/bin/bash

# SE25UCSE019 - MOHAMMAD BAIG

echo "Coded by SE25UCSE019 - Mohammad Baig"

for file in *.txt
do
    if [ -f "$file" ]
    then
        echo "$file"
    fi
done

# Reads the directory to analyze
echo "Enter directory"
read directory

if [ ! -d "$directory" ]
then
    echo "Directory does not exist"
    exit 1
fi

# Finds all the files recursively and displays the top five largest files
find "$directory" -type f -exec du -k {} + | sort -nr | head -5
