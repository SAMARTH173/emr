#!/bin/bash

read -p "Enter a num" num

for i in `seq $num -1 1`
do
    for j in `seq $i`
    do 
        echo -n "* "
done 
echo
done

