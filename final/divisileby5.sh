#!/bin/bash

<<doc
name:samarth kamat
date :30/01/2023
description: is the number divisible by 5
input: 1 number 
output : divisible by 5
doc

read -p "Enter the numbers " num1 

comp=$(( num1 % 5 ))

if [ $comp -eq 0 ]
then
    echo "the ${num1} is divisible by 5 "

else
    echo "the ${num1} is not divisible by 5 "
fi

