#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]; then
    echo "ERROR: Please run the script as root user"
    exit 1
else
    echo "You are root. The script will execute with root privileges."
fi

yum install git -y

if [ $? -ne 0 ]; then
    echo "ERROR: GIT installation failed"
else
    echo "GIT installation DONE"
fi
