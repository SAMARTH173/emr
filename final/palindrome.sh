#!/bin/bash

<<doc
name:samarth kamat
date :1/02/2023
description:  check whether a number is palindrome or not.
input: number
output : palindrome or not
doc

read -p "Enter a number to check palindrome" nu

rev=0
num=$nu
echo $num
while [ $num -gt 0 ]
do
    rem=$((num % 10))
    let rev=" ($rev * 10 ) + $rem"
    num=$((num/10))
    echo "rem ${rem} rev ${rev} num ${num} "
done

echo $rev

if [ $rev -eq $nu ]
then 
    echo "it is palindrome"
else 
    echo "it is not palindrome"

fi

