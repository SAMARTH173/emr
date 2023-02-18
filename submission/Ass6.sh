#!/bin/bash

<<Doc
Name: Samarth kamat
Date: 02/02/2023
Description: Write a script to print the length of each and every string using arrays
Input: Pass some names or strings through command-line.
output: Sample execution: -
        Test Case 1:
        ./string_length.sh hello hai how are you?
        Length of string (hello) - 5
        Length of string (hai) - 3
        Length of string (how) - 3
        Length of string (are) - 3
        Length of string (you?) - 4

        Test Case 2:
        ./string_length.sh
        Error : Please pass the arguments through command-line.

Doc

arr=($@)        #storing the arguments  in an array

if [ $# -ge 1 ]         #check are there any arguments
then

    for i  in ${arr[@]}
    do
        echo "Length of string (${i}) - ${#i}"
    done

else
    echo "Error : Please pass the arguments through command-line."

fi
