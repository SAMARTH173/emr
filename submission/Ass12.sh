#!/bin/bash

<<Doc
Name: Samarth kamat
Date: 02/02/2023
Description:Write script to print contents of file from given line number to next given number of lines.
Input: Pass three command-line arguments.
       1st argument - starting line number.
       2nd argument - number of lines 
       3rd argument -  filename
output: Sample execution: -
        1. ./print_lines.sh 5 3 myfile.txt
            line number 5
            line number 6
            line number 7

        2. ./print_lines.sh myfile.txt
            Error: arguments missing!
            Usage: ./file_filter.sh start_line upto_line filename
            For eg. ./file_filter.sh 5 5 <file>


        3. ./print_lines.sh 5 10 myfile.txt
            Error: data.txt is having only 10 lines. file should have atleast 14 lines 
Doc

if [  $# -ge 3 ]           #checking the input arument      
then
    len=`wc -l < $3`           #checking number of lines the text has 
    sum=`expr $1 + $2`              
    if [ $((sum - 1)) -le $len ]      
    then
        head -$((sum-1)) $3 | tail -$2
    else
        echo "Error: data.txt is having only $len lines. file should have atleast $((sum-1)) lines"
    
    fi        

else
    echo "Error: arguments missing!"
    echo "Usage: ./file_filter.sh start_line upto_line filename"
    echo "For eg. ./file_filter.sh 5 5 <file>"
fi

