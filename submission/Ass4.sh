#!/bin/bash


<<doc
Name: Samarth kamat
Date: 10/02/2023
Description: Write a script to delete empty lines from a file
Input: Pass a filename through command-line.
output: Sample execution: -
        1. ./delete_empty_lines.sh file.txt
            Empty lines are deleted
            Hello
            How
            are
            you?

            2. ./delete_empty_lines.sh
               Error: Please pass the file name through command line.


doc



if [ $# -gt 0 ]                         # to check command arguments
then

    if [ -f $1 ]                        # check if it's a file 
    then
        echo "Empty lines are deleted"      #print
        sed -i '/^[[:blank:]]*$/d' $1                   #delete empty lines
        cat $1                              #display the file
    
    fi 

else                                        # error message
    echo " Error: Please pass the file name through command line."

fi
