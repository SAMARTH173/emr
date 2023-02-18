#!/bin/bash

<<Doc
Name: Samarth kamat
Date: 02/02/2023
Description: Write a script for arithmetic calculator using command line arguments
Input: 3 arguments required
       * two numbers and operator through command-line
output: Sample execution: -
        1. ./arithmatic_calc.sh 25 + 41
            25 + 41 = 66
        2. ./arithmatic_calc.sh 10 x 5
            10 x 5 = 50
        3. ./arithmatic_calc.sh 25 / 5
            25 / 5 = 5.00
        4. ./arithmatic_calc.sh 10.2 – 5.6
            10.2 – 5.6 = 4.6
        5. ./arithmatic_calc.sh
            Error : Please pass the arguments through command line.
            Usage:./arithmatic_calc.sh 2.3 + 6.7
        6. ./arithmatic_calc.sh 3.4
            Error:Please pass 3 arguments.
            Usage:./arithmatic_calc.sh 2.3 + 6.7
Doc



if [ $# -ge 3 ]                                     # checking  the input argument
then
    case $2 in                                          #case condition for operator 

        +)  sum=`echo "$1 + $3 "| bc `
            echo " $1 + $3 = ${sum}"        #addition
            ;;

        -)  sub=`echo "$1 - $3 "| bc `
            echo " $1 - $3 = ${sub}"         #subtraction
            ;;

        x)  mul=`echo "$1 * $3 "| bc `
            echo " $1 x $3 = ${mul}"        #multiplication
            ;;

        /)  div=`echo "scale=2 ; $1 / $3 "| bc `
            echo " $1 / $3 = ${div}"        #division
            ;;

        *)                         #error note if there is any other case than add,sub,mul ,div
            echo " error: only  + :addition ,- :subtraction, x :multiplication,/: division "
            ;;
    esac

else
    if [ $# -ge 1 ]
    then
        echo "Error:Please pass 3 arguments."
        echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"

     else 
         echo "Error : Please pass the arguments through command line."
         echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"

      fi

fi



