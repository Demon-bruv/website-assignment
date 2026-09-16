#!/bin/bash

# SE25UCSE019 - MOHAMMAD BAIG

echo "Coded by SE25UCSE019 - Mohammad Baig"
echo "Enter No. Of students"
read NumofStudents

StudentNames=()

# Read and store the name of each student
for (( i=0; i < NumofStudents; i++ ))
do
    echo "Enter Name Of Student $((i+1))"
    read names
    StudentNames[$i]=$names
done

echo "Original Array:- "
printf "%s, " "${StudentNames[@]}"
echo

lastindex=$(( ${#StudentNames[@]} - 1 ))

# Creating a func named ReverseArray to Rev the given inputs of an array
ReverseArray()
{
    i=0

    for (( j=$lastindex; j>=0; j-- ))
    do
        ReversedNames[i]=${StudentNames[j]}
        ((i++))
    done
}

ReverseArray

echo "Reversed Array is:-"
printf "%s, " "${ReversedNames[@]}"
echo