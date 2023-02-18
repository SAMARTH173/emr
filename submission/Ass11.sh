#!/bin/bash

<<doc
Name: Samarth kamat
Date: 02/02/2023
Description: Given album name and corresponding directory, this scripts renames the jpg files with new name passed through command line
Input: Prefix name should be passed through command-line.
output: Sample execution: -
        Before executing the script
        $ ls
        DSN001.jpg DSN002.jpg DSN003.jpg DSN004.jpg DSN005.jpg
        1) ./rename_album.sh day_out
        All .jpg files in current directory is renamed as
        day_out001.jpg day_out002.jpg day_out003.jpg day_out005.jpg day_out004.jpg
        2) ./rename_album.sh
        Error : Please pass the prefix name through command line.
doc


if [ $# -ge 1 ]                #checking argument
then 

    for i in `ls *.jpg`         #getting a list of total jpg image
    do 

        nub=`echo "$i"|tr -cd [:digit:]`    #storing number 
        newname=`echo "$1$nub.jpg"`         #custom name            
        mv $i $newname                      #change the name                    

    done

else
    echo "Error : Please pass the prefix name through command line."

fi
