#!/bin/bash

<<doc
Name: Samarth kamat
Date: 07/02/2023
Description: Write a script to perform arithmetic operation on digits of a given number
Input: Pass a string through command line ending with an operator.
output: Sample execution: -
        Test Case 1:
        ./operator_dependent.sh 1234+
        Sum of digits = 10
        Test Case 2: 
        ./operator_dependent.sh 8312-
        Subtraction of digits = 2
        Test Case 3:
        ./operator_dependent.sh 5487
        Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)
        Test Case 4: 
        ./operator_dependent.sh 1111x
        Multiplication of digits = 1
        Test case 5:
        ./operator_dependent.sh 12/
        Division of digits = .50
        Test Case 6: 
        ./operator_dependent.sh
        Error : Please pass the arguments through CL.
        Usage : ./operator_dependent.sh 2345+

        VPL

doc



if [ $# -gt 0 ]                                                 # checking input argument
then
    num=$1                                                      # storing number in a variable
    operator=${num: -1}
    len=${#num}                                                  #storing length       
    ans=${num:0:1}                                                #storing first digit
    case $operator in
        +)                                                      #addition
            for i in `seq 1 $((len - 2 ))`
            do
                ans=`echo "$ans + ${num:$i:1}"| bc`
            done
            echo "Sum of digits = $ans"
            ;;
        
        -)                                                          #subtraction
            for i in `seq 1 $((len - 2 ))`
            do
                ans=`echo "$ans - ${num:$i:1}"| bc`
            done
            echo "Subtraction of digits = $ans"
            ;;
        
        x)                                                        #multiplication
           for i in `seq 1 $((len - 2 ))`
           do
               ans=`echo "$ans * ${num:$i:1}"| bc`
           done
           echo "Multiplication of digits = $ans"
            ;;
        
        /)                                                        #division
            for i in `seq 1 $((len - 2 ))`
            do
                ans=`echo "scale=2;$ans / ${num:$i:1}"| bc`
            done
            echo "Division of digits = $ans"
            ;;

                                                                        #error message
        *)echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"
            ;;
    esac

            
else 
    echo  "Error : Please pass the arguments through CL."
    echo "Usage : ./operator_dependent.sh 2345+"
fi

