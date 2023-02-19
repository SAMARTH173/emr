#!/bin/bash

<<doc
name:samarth kamat
date :31/01/2023
description:given three sides of a triangle, to check whether the triangle is perfect right triangle 
input: 3 number 
output : right angled triangle or not
doc

read -p "Enter Base, Height, Hypotenuse " Base  height hypot

basesq=$((Base * Base))
heightsq=$((height * height))
hypotsq=$((hypot * hypot))
sumsq=$((basesq + heightsq))

if [ $sumsq -eq  $hypotsq ]
then
    echo "The triangle with base:${Base} Height:${height} hypotenuse:${hypot} is right angle triangle  "

else
    echo "The triangle with base:${Base} Height:${height} hypotenuse :${hypot} is not a right angle triangle  "

fi

