#!/bin/bash

NUMBER1=$1
NUMBER2=$2

addition=$(($NUMBER1+$NUMBER2))

echo "The addition of two numbers is: $addition"

#NOTE: addition.sh rama 5 ==> by mistake i have given string, so it cont add, so it will consider the 0 automatically.