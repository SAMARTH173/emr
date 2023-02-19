#!/bin/bash


<<doc
Name: Samarth kamat
Date: 02/02/2023
Description: Write a script to determine whether a given file system or mount point is mounted
Input: file system through command line argument.
output: Sample execution: -
        1. ./mounted_fs.sh /dev/sda2
        File-system /dev/sda2 is mounted on / and it is having 98%
        used space with 3298220 KB free.
        2. ./mounted_fs.sh /dev
        /dev is not mounted.
        3. ./mounted_fs.sh
        Error : Please pass the name of the file-system through command line.

doc

filesys=(`df | cut -d " " -f1`)             # this array stores Filesystem
mount=(`df|tr -s " " | cut -d " " -f6`)         #this array stores Mounted on
usg=(`df|tr -s " " | cut -d " " -f5`)           # this array stores Use% 
space=(`df|tr -s " " | cut -d " " -f4`)         #this array stores Available
flag=0              #flag for unmounted data


if [ $# -gt 0 ]         # to check the input argument
then
len=${#filesys[@]}          # to store the length of array 

    for i in `seq 1 $((len -1)) `
    do
    
        if [ $1 = ${filesys[$i]} ]                  # if the the given argument matches  a name in array 
        then
            
            echo "File-system ${filesys[$i]} is mounted on ${mount[$i]} and it is having ${usg[$i]}"
            echo "used space with ${space[$i]} KB free."
            flag=1        
        fi
    done

else
    echo "Error : Please pass the name of the file-system th rough command line."

fi


if [ $flag -eq 0 ]                              # if asked argument is not mnted 
then 
    echo "$1 is not mounted."

fi


