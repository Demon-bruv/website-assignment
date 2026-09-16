#!/bin/bash
#SE25UCSE019-MOHAMMAD BAIG
# Getting an input of number of students from the user
echo "Coded by SE25UCSE019 - Mohammad Baig"
echo "Numer Of Students"
read num_of_students
if ! [[ $num_of_students =~ ^[0-9]+$ ]]
then
    echo "Invalid input. Please enter a +ve integer."
    exit 1
fi
marks=()
for(( i=0; i < num_of_students; i++ ))
do
    echo "Enter Marks of Student $((i+1))"
    read Student_Marks
    if ! [[ $Student_Marks =~ ^[0-9]+$ ]]
    then
        echo "Invalid input. Please enter a +ve integer."
        exit 1
    fi
    if [ $Student_Marks -gt 100 ]
    then
        echo "Invalid Input. Please Enter Marks B/W 0-100"
        exit 1
    fi
    marks[$i]=$Student_Marks
done
# Grading
for (( i=0; i<num_of_students; i++ ))
do
    mark=${marks[$i]}
    if [ $mark -ge 90 ]
    then
        echo "Student $((i+1)): $mark - Grade A"
    elif [ $mark -ge 75 ]
    then
        echo "Student $((i+1)): $mark - Grade B"
    elif [ $mark -ge 50 ]
    then
        echo "Student $((i+1)): $mark - Grade C"
    else
        echo "Student $((i+1)): $mark - Fail"
    fi
done