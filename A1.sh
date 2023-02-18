#!/bin/bash
   
<<doc
name:Samarth kamat
Date: 01/02/2023
Description:Read 'n' and generate a pattern given below( number incr    ements from left to right)
input: number
output: pattern
doc
  
read -p "Enter a num" num
  
for i in `seq $num`
do
    for j in `seq $i`
    do
        echo -n "$j "
    done
    echo
done

