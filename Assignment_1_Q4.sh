#!/bin/bash

#SE25UCSE019 -Mohammad baig

echo "Coded by SE25UCSE019 - Mohammad Baig"

echo "Enter File Name"
read filename

if [ -f "$filename" ]
then
    if [ -r "$filename" ]
    then
        echo "File is readable"
    else
        echo "File is not readable"
    fi

    if [ -w "$filename" ]
    then
        echo "File is Writable"
    else
        echo "File is not Writeable"
    fi

    if [ -x "$filename" ]
    then
        echo "File is Executable"
    else
        echo "File is not Executable"
    fi
else
    echo "Error. File Doesnot Exist"
    exit 1
fi
