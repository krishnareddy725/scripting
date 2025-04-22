#!/bin/bash

ID=$(id -u)

VALIDATE( ) {
    if [ $? -ne 0 ]
    then
        echo " ERROR: $2 ........... is FAILED "
    else
        echo " SUCCESS: $2 ........... installation is complted "

    fi
}

if [ iD -ne 0 ]
then
    echo " ERROR: Please run command as a ROOT user "

else
    echo " You are a root user "

fi

yum install nginx -y

VALIDATE $? "Installing nginx"

yum install git -y

VALIDATE $? "Installing GiT"