#!/bin/bash

<<doc
name:samarth kamat
date :31/01/2023
description: to find the smallest and largest of entered n numbers.
input: n number 
output : largest and smallest number
doc

read -p "Enter number of numbers you are going to enter " num

declare -a arr_num

for i in ` seq 0 $((num-1))`
do

    echo "Enter a number to add in array index ${i}"
    read arr_num[$i]

done

echo "the elements in  array are ${arr_num[*]} "

small=${arr_num[0]}
large=${arr_num[0]}

for nu in " ${arr_num[@]}"
do
    if [ $nu -gt $large ]
    then
        large=$nu
    fi
  
    if [ $nu -lt $small ]
    then
       small=$nu
   fi
done

echo " the largest number in array is ${large}"
echo "the smallest number in array is ${small}"



