#!/bin/bash

echo " Please enter the Number: "

read -s NUMBER

if [ $NUMBER -ne 0 ]
then
    echo "ERROR: given $NUMBER is not greater than 0"
    exit 1 #here we can give other than 0

else
    echo "Given $NUMBER is greater than zero"


fi

yum install mysql -y

