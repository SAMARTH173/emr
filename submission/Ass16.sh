#!/bin/bash

<<doc
Name: Samarth kamat
Date: 09/02/2023
Description: Use a recursive function to print each argument passed to the function
Input: Pass the command-line arguments to script.
output: Sample execution: -
       Test Case 1: 
       Test Case 1:
        ./recursion.sh How are you? I am fine
        How
        are
        you?
        I
        am
        fine

        Test Case 2: 
        ./recursion.sh
        Error : Pass the arguments through command line.

        Test Case 3:
        ./recursion.sh 1 12 123 1234 12345 123456
        1
        12
        123
        1234
        12345
        123456
doc

if [ $# -gt 0 ]                                                      #checking the passed arguments
then
    
    function print()                                            #function for printing
    {
    
        echo $1                                                 # printing the message
        arr=($@)                                                #storing the passed argument in an array
        arr=(${arr[@]:1})                                       
        
        if [ $# -gt 0 ]
        then
            print ${arr[@]}                                        #recurrsion
        else 
            return
        fi
    
     }

    print $@                                                    #function call

else
    echo "Error : Pass the arguments through command line."
fi

