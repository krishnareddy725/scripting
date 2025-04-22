#!/bin/bash

NUMBER1=$1
NMBER2=$2

add=(($NUMBER1+$NUMBER2))

echo " The sum of two numbers is: " $add 

echo "To know how may arguments passed:  " $#

echo "To get all arguments:   " $@

echo " To know the script name:   " $0
