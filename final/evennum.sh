#!/bin/bash

<<doc
name:samarth kamat
date :31/01/2023
description: print all the even numbers from 1 to 100.
input: _
output : even number from 1 to 100
doc


for i in `seq 100`
do
    if [ `expr $i % 2` -eq 0 ]
    then 
        echo $i
     fi
 done


