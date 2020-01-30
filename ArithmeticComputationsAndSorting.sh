#!/bin/bash -x
echo "Welcome to Arithmetic Computations"
#Declared a dictionary
declare -A resultsDictionary

#VARIABLE
number=1

#Reading inputs from user
read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

#Performing Arithmetic operations
result1=`echo "scale=2; $a + $b *$c" | bc `
result2=`echo "scale=2; $a * $b + $c" | bc ` 
result3=`echo "scale=2; $c + $a / $b" | bc `
result4=`echo "scale=2; $a % $b + $c" | bc `

#Storing the results in a dictionary
resultsDictionary[result1]=$result1
resultsDictionary[result2]=$result2
resultsDictionary[result3]=$result3
resultsDictionary[result4]=$result4

#Storing The results in an array
while (( $number <= ${#resultsDictionary[@]} ))
do
	array[$number-1]=${resultsDictionary[result$number]}
	number=$((number+1))
done


#Sorting The Array in Descending order
for ((i=0; i<$((${#array[@]}-1)); i++ ))
do
	for (( j=i+1; j<${#array[@]}; j++))
	do
		if (( ${array[i]%.*} < ${array[j]%.*} ))
		then
			temp=${array[i]}
			array[i]=${array[j]}
			array[j]=$temp
		fi
	done
done

echo "Results in descending order:  " ${array[@]}

#Sorting The Array in Ascending order
for ((i=0; i<$((${#array[@]}-1)); i++ ))
do
	for (( j=i+1; j<${#array[@]}; j++))
	do
		if (( ${array[i]%.*} > ${array[j]%.*} ))
		then
			temp=${array[i]}
			array[i]=${array[j]}
			array[j]=$temp
		fi
	done
done

echo "Results in Ascending order:  " ${array[@]}
