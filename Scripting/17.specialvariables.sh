#!/bin/bash

NUMBER1=$1
NUMBER2=$2

add=$(($NUMBER1 + $NUMBER2))

echo "The sum of two numbers is: $add"
echo "To know how many arguments were passed: $#"
echo "To get all arguments: $@"
echo "To know the script name: $0"