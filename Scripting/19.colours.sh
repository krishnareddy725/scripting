#!/bin/bash

ID=$(id -u)
f="Today"
TIMESTAMP=$(date +"$f-%H-%M-%S")
logfile="/tmp/$(basename $0)-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE( ) {
    if [ $? -ne 0 ]
        echo "ERROR!$2.........$R Installation FAILED"
        exit 1
    else
        echo "SUCCESS!$2..........$G Installation SUCCESS"
    fi
}

if [ ID -ne 0 ]
    echo "$R ERROR! Please run script has a root user "
    exit 1

else
    echo "$G you are running this script has a root user"

fi

yum install mysql -y

VALIDATE $? "Installing mysql" &>> logfile

yum install nginx -y

VALIDATE $? "installing nginx" &>> logfile