#!/bin/bash

ID=$(id -u)
f="Today"
TIMESTAMP=$(date +"$f-%H-%M-%S")
logfile="/tmp/$(basename $0)-$TIMESTAMP.log"

VALIDATION( ) {
    if [ $? -ne 0 ]; then
        echo " ERROR!: $2 ..............installation is FAILED "
        exit 1
    
    else
        echo " SUCCESS!: $2 ...............installation is SUCCESS "

    fi

}

if [ $ID -ne 0 ]; then
    echo " Please run this script has a root user "
    exit 1

else
    echo "we are running script has a root user "

fi

yum install nginx -y

VALIDATION $? "installing nging" &>> $logfile

yum install mysql -y

VALIDATION $? "installing mysql" &>> $logfile