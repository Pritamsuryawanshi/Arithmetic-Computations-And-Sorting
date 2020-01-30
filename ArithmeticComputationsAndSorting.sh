#!/bin/bash -x

echo "Welcome to Arithmetic Computations"

read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

result1=`echo "scale=2; $a+$b*$c" | bc `
result2=`echo "scale=2; $a*$b+$c" | bc ` 

