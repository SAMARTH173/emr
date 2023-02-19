#!/bin/bash

<<doc
Name: Samarth kamat
Date: 13/02/2023
Description:Write a script to replace 20% lines in a C file randomly and replace it with the pattern
Input: Provide a.c file to this script through command-line.
output: Sample execution: -
        1. ./replace_DEL.sh main.c
        Before replacing
        #incude <stdio.h>
        int main()
        {
         printf(“Hello world\n”);
        }
        After replacing
        #incude <stdio.h>
        int main()
        {
        <-----------Deleted------------>
        }
        2. ./replace_DEL.sh main1.c
        Error : No such a file.
        3. ./replace_DEL.sh main2.c
        Error : main2.c is empty file. So can’t replace the string.
        4. ./replace_DEL.sh
        Error : Please pass the file name through command line.
       
doc


if [ $# -eq 1 ]                                               # if any argument are passed
then
    
    if [ -f  $1 ]                           #to check its a file or not
    then
        
        if [ -s $1 ]                            #to check if its not empty
        then
            len=`wc -l < $1`                        #number of lines in an file
            
            if [ $len -ge 5 ]                               #to check the number of lines in the file less than 5 or not
            then 
                nooflin=$((len / 5))                            #20 percent of the file
                random=(`shuf -i 0-$len -n$nooflin`)            #random number of lines
                echo "Before replacing"                 
                cat $1                                                  # display the file before changing
                for i in ${random[@]}                                             # number of lines
                do
                sed -i "$i s/.*/<-----------Deleted------------>/" $1               # pattern to be replaced
                done
                echo 
                echo "After replacing"
                cat $1                                                  #display the file after replacing
            
            else
                echo "Error: less no of lines for 20%"                                      #error message
            fi

        else
            echo "Error : $1 is empty file. So can’t replace the string."          # error message
        fi

    else 
        echo " Error : No such a file."                                                 #error message

    fi 

else
    echo "Error : Please pass the file name through command line."                      # error message

fi

