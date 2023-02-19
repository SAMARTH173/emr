#!/bin/bash

<<doc
name:samarth kamat
date :31/01/2023
description:  that reads in 2 integers and determines and prints if the first is a multiple of the second.
input: 2 number 
output : multiple or not
doc

read -p "Enter 2 numbers " num1 num2

div=$(( $num1 % $num2))

if [ $div -eq 0 ]
then
    echo "the number ${num1} is multiple of ${num2}  "

else 
    echo  "the number ${num1} is not a  multiple of ${num2}  "

fi

