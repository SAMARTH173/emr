#!/bin/bash

<<doc
name:Samarth kamat
Date: 01/02/2023
Description:Write a script to print chess board
input: none
output: chess pattern
doc


number=1
for i in `seq 8`
do
    for j in `seq 8`
    do 
        sum=$(( i + j))

        if [ $((sum % 2 )) -eq 0 ]
        then
           echo -e -n "\e[47m" " "
        else
           echo -e -n "\e[40m" " "
        fi        
    done

echo -e -n "\e[0m" " "
echo
done
