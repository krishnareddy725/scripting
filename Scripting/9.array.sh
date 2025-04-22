#!/bin/bash
 FRUITS=("Apple" "Bananna" "Mongo") #array the index value starts from 0

 echo "First value: ${FRUITS[0]}"
 echo "Second value: ${FRUITS[1]}"
 echo "Third value: ${FRUITS[2]}"
 echo "Print the value: ${FRUITS[@]}" #@ prints the all values
