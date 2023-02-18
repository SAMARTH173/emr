#!/bin/bash

<<Doc
Name: Samarth kamat
Date: 02/02/2023
Description: Write a script to rename a file/directory replaced by lower/upper case letters
Input: none
output: Sample execution: -
        Before running the script
        $ ls
        File.txt MyScript.SH MyFile007.txt dir/ Assign1/ newfolder/
        $ ./file_upper_lower.sh
        Files are rename in lowercase and directories are renamed in upper case
        $ ls
        file.txt myfile007.txt myscript.sh DIR/ ASSIGN1/ NEWFOLDER/
Doc


for i in `ls`                      #getting all the files and text name in the current dir ,using ls command
do
    if [ -f $i ]                                    #for file checking 
    then
       newfile=`echo $i | tr [:upper:] [:lower:]`       #new name  for file
       mv $i $newfile 
    fi  

    if [ -d $i ]                                    #for directory checking        
    then
        newfolder=`echo $i | tr [:lower:] [:upper:]`    #new directory name
        mv $i $newfolder
    fi  

done

