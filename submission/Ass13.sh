#!/bin/bash

<<doc
Name: Samarth kamat
Date: 09/02/2023
Description: Display the longest and shortest user-names on the system
Input: Fetch user-names from the first field in /etc/passwd file.
output: Sample execution: -
        Test Case 1.
        ./largest_username.sh
        The Longest Name is: speech-dispatcher
        The Shortest Name is:lp
doc


arr=(`cat /etc/passwd | cut -d ":" -f1`)            #storing the passwd name in a array
small=${arr[0]}                                     #store 1 value as the smallest default 
large=${arr[0]}                                     #store 1value as the largest default

for i in ${arr[@]}                                  
do
    if [ ${#i} -lt ${#small} ]                              # smallest logic
    then
        small=$i
    fi

    if [ ${#i} -gt ${#large} ]                          #largest logic
    then
        large=$i
    fi

done

echo "The Longest Name is: $large"                              # display
echo  "The Shortest Name is:$small"


