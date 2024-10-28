#!/bin/bash

echo "Basic Calculator"
echo 
echo "press 'a' for Addition"
echo "press 'b' for subtractions"
echo "press 'c' for multiplication"
echo "press 'd' for division"

read -p "Enter your choice: " choice

case $choice in
	a) 
		echo "--------------Addition------------------"
		read -p "Enter first number: " first
		read -p "Enter second number: " second
		let sum=$first+$second
		echo "sum is: $sum";;
	b)
		echo "--------------Subtraction------------------"
		read -p "Enter first number: " first
		read -p "Enter second number: " second
		let operation=$first-$second
		echo "subtraction is: $operation";;
	c)
		echo "--------------Multiplication------------------"
		read -p "Enter first number: " first
		read -p "Enter second number: " second
		let operation=$first*$second
		echo "multiplication is: $operation";;
	d)
		echo "--------------Division------------------"
		read -p "Enter first number: " first
		read -p "Enter second number: " second
		let operation=$first/$second
		echo "Disvision is: $operation";;
	*) 
		echo "wrong Input provided";;
esac



