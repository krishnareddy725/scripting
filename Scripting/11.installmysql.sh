#!/bin/bash

ID=$(id -u)

if [ id -eq 0 ]; then # check the space here

    echo "you are root user"

else
    echo "ERROR: you are not root user"

fi

yum install mysql -y