#!/bin/bash

#SE25UCSE019-MOHAMMAD BAIG

# Read and validate the first integer
echo "Coded by SE25UCSE019 - Mohammad Baig"
echo "Enter First Number"
read firstnum

if ! [[ $firstnum =~ ^-?[0-9]+$ ]]
then
    echo "Invalid input. Please enter an integer."
    exit 1
fi

# Read and validate the Second integer
echo "Enter Second Number"
read secondnum

if ! [[ $secondnum =~ ^-?[0-9]+$ ]]
then
    echo "Invalid input. Please enter an integer."
    exit 1
fi

# Comparison
if [ $firstnum -gt $secondnum ]
then
    echo "First Number is Greater Than The Second One"
elif [ $firstnum -lt $secondnum ]
then
    echo "First Number is Smaller Than The Second One"
else
    echo "Both The Numbers Are Equal"
fi

# Calculating
sum=$(($firstnum + $secondnum))
echo "Sum of The Numbers is $sum"

# Checking for division
if [ $secondnum -eq 0 ]
then
    echo "Division by Zero is Not Allowed"
else
    divresult=$(($firstnum / $secondnum))
    echo "Result of Division is $divresult"
fi
