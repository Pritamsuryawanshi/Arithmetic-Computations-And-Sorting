#!/bin/bash -x

echo "Welcome to Arithmetic Computations"
declare -A resultsDictionary
read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

result1=`echo "scale=2; $a + $b *$c" | bc `
result2=`echo "scale=2; $a * $b + $c" | bc ` 
result3=`echo "scale=2; $c + $a / $b" | bc `
result4=`echo "scale=2; $a % $b + $c" | bc `

resultsDictionary[result1]=$result1
resultsDictionary[result2]=$result2
resultsDictionary[result3]=$result3
resultsDictionary[result4]=$result4


