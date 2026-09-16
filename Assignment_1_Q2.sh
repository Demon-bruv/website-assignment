#!/bin/bash
#SE25UCSE019-MOHAMMAD BAIG
echo "Coded by SE25UCSE019 - Mohammad Baig"
echo "Enter A Number"
read num
if ! [[ $num =~ ^[0-9]+$ ]]
then
    echo "Invalid input. Please enter a +ve integer."
    exit 1
fi
original_num=$num
# Calculating factorial using a while loop
fact=1
while [ $num -gt 0 ]
do
    ((fact = fact * num))
    ((num--))
done
echo "Factorial is $fact"
i=2
is_prime=1
while [ $i -lt $original_num ]
do
    if [ $(($original_num % $i)) -eq 0 ]
    then
        is_prime=0
        break
    fi
    ((i++))
done
# Checking whether the input number is prime
if [ $is_prime -eq 1 ]
then
    echo "Given Number is Prime"
else
    echo "Given Number is Not A Prime"
fi
# reversing the original number
reverse=0
temp=$original_num
while [ $temp -gt 0 ]
do
    digit=$((temp % 10))
    reverse=$((reverse*10+digit))
    temp=$((temp/10))
done
echo "Reverse is $reverse"
# Calculating the sum of all digits using an until loop
sum=0
temp2=$original_num
until [ $temp2 -eq 0 ]
do
    digit=$((temp2 % 10))
    sum=$((sum + digit))
    temp2=$((temp2 / 10))
done
echo "Sum of the digits is $sum"