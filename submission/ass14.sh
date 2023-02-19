#!/bin/bash

<<Doc
Name: Samarth kamat
Date: 09/02/2023
Description:Write script called say_hello, which will print greetings based on time
Input: none
output: Sample execution: -
        1. When we start shell (whenever you opening new tab or terminal)
        Good Morning user, Have nice day!
        This is Thursday 08 in June of 2017 (10:44:10 AM)
Doc



time=`date | tr -s " " | cut -d " " -f4 | cut -d  ":" -f1 `

usr=`whoami`

day=`date +%A`

da=`date | tr -s " " | cut -d " " -f3  `

month=`date +%B`

year=`date +%Y`

hr=`date | tr -s " " | cut -d " " -f4  `

ap=`date +%p`

if [ $time -gt 5 -a $time -le 12 ]
then 
    echo "Good Morning $usr, Have nice day!"
    echo "This is ${day} ${da} in ${month} of ${year} (${hr} ${ap})"

elif [ $time -gt 12 -a $time -le 14 ]
then
    echo "Good noon $usr, Have nice day!"
    echo "This is ${day} ${da} in ${month} of ${year} (${hr} ${ap})"

elif [ $time -gt 14 -a $time -le 17 ]
then
    echo "Good afternoon $usr, Have nice day!"
    echo "This is ${day} ${da} in ${month} of ${year} (${hr} ${ap})"

elif [ $time -gt 17 -a $time -le 21 ]
then
    echo "Good Evening $usr, Have nice day!"
    echo "This is ${day} ${da} in ${month} of ${year} (${hr} ${ap})"

else
    echo "Good night $usr, Have nice day!"
    echo "This is ${day} ${da} in ${month} of ${year} (${hr} ${ap})"
fi  

