#!/bin/bash

<<doc
name:Samarth kamat
Date: 01/02/2023
Description:Read 'n' and generate a pattern given below(number increasing from Top to bottom)
input: number
output: pattern
doc

read -p "Enter a number" num
number=1
for i in `seq $num`
do
    for j in `seq $i`
    do 
        echo -n "$number "
        number=$((++number))
    done 
echo
done
