#!/bin/bash

<<doc
name:samarth kamat
date :31/01/2023
description: check whether given year is leap year or not.
input: 1(year) 
output : leap year or not 
doc

read -p "Enter the year " year


if [ $(( year % 4 )) -eq 0 -a $(( year % 100 )) -ne 0 -o $(( year % 400)) -eq 0 ]
then
    echo "then year ${year} is leap year  "

else
    echo "then year ${year} is not a leap year  "
fi

