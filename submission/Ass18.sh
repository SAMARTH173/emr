#!/bin/bash

<<doc
Name: Samarth kamat
Date: 09/02/2023
Description: WAS to print contents of a directory without ls command
Input: Pass any number of directories through command-line.
output: Sample execution: -
        Let assume your pwd is /home/user/ECEP/Linux_Systems/
        1. ./output_ls.sh
        Assignments Classwork
        2. ./ouput_ls.sh ~ ~/ECEP
        /home/user:
        Downloads Documents Desktop Music Pictures Public Videos
        ECEP
        /home/user/ECEP:
        Linux_Systems Advnc_C Linux_Internals Data_Structures MC
        3. ./ouput_ls.sh Test
        output_ls.sh: Cannot access ‘Test’ : No such a file or directory.
doc


for i in $@                                     #for number of arguments in command line
do
    if [ -d $i ]                                #only in directory
    then
        cd $i                                       # using cd command gooing into the dir
        echo $i                                      #display dir name
        echo *                                      #display content in dir
    else 
        echo "output_ls.sh: Cannot access '$i' : No such a file or directory."      #display  error message
    fi  
echo 
done

