#!/bin/bash

<<doc
Name: Samarth kamat
Date: 09/02/2023
Description: Count the number of users with user IDs between given range.
Input: Fetch user-names from the first field in /etc/passwd file.
output: Sample execution:-
        1. ./user_ids.sh
        Total count of user ID between 500 to 10000 is: 2

        2. ./user_ids.sh 0 100
        Total count of user ID between 0 to 100 is : 3

        3. ./user_ids.sh 100
        Error : Please pass 2 arguments through CL.
        Usage : ./user_ids.sh 100 200

        4. ./user_ids.sh 200 100
        Error : Invalid range. Please enter the valid range through CL.

        
doc


arr=(`cat /etc/passwd | cut -d ":" -f3`)            #storing the passwd user id  in a array

count=0                                             #storing the number of  used-id in the range 
flag=1                                              #Error flag for displaying only once
for i in ${arr[@]}                                  #for each user id
do
    if [ $# -lt 1 ]                                     # NO INPUT given condition 
    then
        if [  $i -gt 500 -a $i -lt 10000 ]              #range between 500 and 10000
        then
        count=`expr $count + 1 `                        #incrementing the count
        fi
    
    elif [ $# -eq 2 -a $1 -lt $2 ]                      # if 2 range is given and the given range is correct
    then

        if [ $i -gt $1 -a $i -lt $2 ]                   # accordin to input given range
        then
            count=`expr $count + 1`                         # incrementing the count
        fi
    
    else
        if [ $# -eq 1 -a $flag -eq 1 ]                      # error for 1 input argument
        then
            echo "Error : Please pass 2 arguments through CL."
            echo "Usage : ./user_ids.sh 100 200"
            flag=0
        
        elif [ $1 -gt $2 -a $flag -eq 1 ]                   # error message for invalid range
        then
            echo "Error : Invalid range. Please enter the valid range through CL."
            flag=0
        fi
    fi
done

                                                                    # display 
case $# in
    0)
        echo "Total count of user ID between 500 to 10000 is: $count"
        ;;
    2)
        if [ $flag -eq 1 ]
        then
        echo "Total count of user ID between $1 to $2 is : $count"
        fi
        ;;
    *)
        echo "error"
        ;;
esac

