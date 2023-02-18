#!/bin/bash

<<doc
Name: Samarth kamat
Date: 09/02/2023
Description: Write a script to sort a given number in ascending or descending order
Input: Pass option and numbers through command-line arguments.
output: Sample execution: -
       Test Case 1: 
        ./sorting.sh -a 5 4 6 2 3 8 9 7 1
        Ascending order of array is 1 2 3 4 5 6 7 8 9
        Test Case 2: 
        ./sorting.sh -d 5 4 6 2 3 8 9 7 1
        Descending order of array is 9 8 6 5 4 3 2 1
        Test Case 3:
        ./sorting.sh 5 4 6 2 3 8 9 7 1
        Error : Please pass the choice.
        Usage : ./sorting -a/-d 4 23 5 6 3
        Test Case 4: 
        ./sorting.sh
        Error : Please pass the argument through command line.
        Usage : ./sorting -a/-d 4 23 5 6 3
        Test Case 5:
        ./sorting.sh -d 5 4 6 2 -3 8 -9 7 1
        Descending order of array is 8 7 6 5 4 2 1 -3 -9
doc


if [ $# -gt 0 ]                                          #checking the input argument
then        
    
    case $1 in                                            # case condition for  -a :ascending -d descending order       
        -a)                                                         #ascending order 
            arr=($@)                                                #storing the number in array
            len=${#arr[@]}                                          #length of the array
            for i in `seq 1 $((len -2))`                                        
            do
                
                for j in `seq 1 $((len -1 -i))`                       # bubble sort logic
                do
                    
                    if [ ${arr[$j]} -gt ${arr[$((j+1))]} ]
                    then                                                         #Swap logic   
                        temp=${arr[$j]}
                        arr[$j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp 
                    
                    fi    
                done
            done            
            echo "Ascending order of array is ${arr[@]:1}"
            ;;


        -d)                                                           #descending order
            arr=($@)                                                    #storing the number in array
            len=${#arr[@]}                                              #length of the array                             
            for i in `seq 1 $((len -2))`
            do                                                              # bubble sort logic
                for j in `seq 1 $((len -1 -i))`
                do
                    if [ ${arr[$j]} -lt ${arr[$((j+1))]} ]                   #Swap logic
                    then
                        temp=${arr[$j]}
                        arr[$j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp
                    fi
                done
            done
            echo "Descending order of array is ${arr[@]:1}"
            ;;

        *) 
            echo "Error : Please pass the choice."
            echo "Usage : ./sorting -a/-d 4 23 5 6 3"
            ;;
    esac

else
        echo "Error : Please pass the argument through command line."
        echo "Usage : ./sorting -a/-d 4 23 5 6 3"
    
fi
