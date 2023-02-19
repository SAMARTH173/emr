#!/bin/bash

<<doc
Name: Samarth kamat
Date: 12/02/2023
Description:For each directory in the $PATH, display the number of executable files in that directory
Input: none
output: Sample execution: -
        1. ./executable_path.sh
        Current dir: /usr/local/sbin
        current count: 0
        Current dir: /usr/local/bin
        current count: 0
        Current dir: /usr/sbin
        current count: 205
        Current dir: /usr/bin
        current count: 1889
        Current dir: /sbin
        current count: 187
        Current dir: /bin
        current count: 159
        Current dir: /usr/games
        current count: 5
        Current dir: /usr/local/games
        current count: 0
        Total – 2445
        
       
doc


arr=(` echo $PATH | tr  ":" " "`)               # storing all directory in an array

for i in ${arr[@]}
do
    if [ -d $i ]                            # to check if the path is a dir or not
    then
        cd $i                               # to move inside the path
        content=(`ls`)                      #storing all the files in an array
        count=0                                    # count for executable
        for j in ${content[@]}
        do
            if [ -e $j ]                            #check if the give is executable or not
            then
                
                count=$((count+1))                          # incrementing the count
            fi
        done
        echo "Current dir : $i"                                      #display current dir
        echo "current count: $count"                                    # display current count
        total=$((total+count))                                      # storing total count in a var
    fi 
done

echo "Total:$total"                                                 #display total count


