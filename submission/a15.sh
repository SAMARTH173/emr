#!/bin/bash

<<doc
Name: Samarth kamat
Date: 09/02/2023
Description: Shell script to convert string lower to upper and upper to lower
Input: Provide a filename through command-line.
output: Sample execution:-
        1. ./upper_lower.sh file.txt
        1 – Lower to upper
        2 – Upper to lower
        Please select option : 1
        WHAT IS OS?
        WHAT ARE THE DIFFERENT OS?
        WHEN IS OS USED?
        WHAT IS PARTITION AND ITS USE?
        HOW MANY PARTITIONS CAN BE DONE?
        
        2. ./upper_lower.sh file.txt
        1 – Lower to Upper
        2 – Upper to Lower
        Please select option : 2

        what is os?
        what are the different os?
        when is os used?
        what is partition and its use?
        how many partitions can be done?

        3. ./upper_lower.sh file1.txt
        Error: No contents inside the file.
        
        4. ./upper_lower.sh
        Error : Please pass the file name through command line.
doc


if [ $# -gt 0 ]                                                 #checking the input argment
then

    if  [ -f $1 -a -s $1  ]                                     # checking the file and does it contain anything
    then 
        
       echo "1 – Lower to upper"
       echo "2 – Upper to lower"
       read -p "Please select option :" num                        # option for choosing

       case $num in
            1)
                cat $1 | tr [:lower:] [:upper:]                     # for a-z to A-Z
                ;;
            2) 
                cat $1 | tr [:upper:] [:lower:]                     #for A-Z to a-z
              ;;
            
            *)
                echo "error: chose between 1 and 2 only"
                ;;
        esac
       
    else
        echo " Error: No contents inside the file."
    fi
else
    echo "Error : Please pass the file name through command line."
fi
