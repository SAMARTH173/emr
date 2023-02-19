#!/bin/bash

<<doc
name:samarth kamat
date :1/02/2023
description:  
input: number
output : palindrome or not
doc

read -p "Enter a number to check prime" num

square_root=`echo " sqrt($num)" | bc`

if [ $num -le 1 ]
then 
    echo "the number ${num} is not prime"
fi

prime=1
for i in `seq 2 $square_root`
do 
    if [ $((num % i )) -eq 0 ]
    then 
        echo "the number ${num} is not prime"
        prime=0
        break
    fi
done


if [ $prime -eq 1 ]
then 
    echo "the number ${num} is  prime"
fi


