#!/bin/bash

num=5
number=1
for i in `seq $num `
do
    for k in `seq $((num-i)) -1 1`
    do
        echo -n "  "
    done

    for j in `seq $i`
    do 
        if [ `expr $number % 2` -eq 0 -o $number -eq 1 ]
        then
            echo -n "1 "
        else 
           echo -n "0 "

        fi
        number=$((number+1))
    done 
echo
done



