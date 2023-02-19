#!/bin/bash

<<doc
name:samarth kamat
date :30/01/2023
description: product of 2 number is even or odd
input: 2 number 
output : even or odd
doc

read -p "Enter 2 numbers " num1 num2

mul=$(( $num1 * $num2))

if [ $(( $mul % 2)) -eq 0 ]
then
    echo "the product of ${num1} and ${num2} is even  "

else
    echo "the product of ${num1} and ${num2} is odd  "
fi

