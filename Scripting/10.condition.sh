#!/bin/bash

read -s NUMBER

if [ $NUMBER -gt 100 ]; then
    
    echo "$NUMBER is greater than 100"

else
    echo "$NUMBER is not gretaer than 100"

fi