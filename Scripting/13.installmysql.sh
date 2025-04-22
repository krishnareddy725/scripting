#!/bin/bash

ID=$(id -u)

if [ ID -ne 0 ]; then

    echo " ERROR: Please run script as a ROOT user "
    exit 1

else
    echo " Your are a root user"

fi

yum install git -y

if[ $? -ne 0 ]; then

    echo "ERROR: Installing Mysql is failed"
    exit 1

else
    echo " Installing mysql is success "

fi
