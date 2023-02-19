#!/bin/bash

<<doc
name:samarth kamat
date :31/01/2023
description: to print the ‘n’ Fibonacci terms.
input: number
output : all fibonacci terms
doc

read -p "Enter numbers of fibonacci seq you want " num

first=0
second=1
next=0

for i in `seq $num`
do
    echo -n "  ${next}"
    first=$second
    second=$next
    next=$((first + second))
done

echo

