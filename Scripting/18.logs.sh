#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date+$f-%H-%M-%S)
logsfile="/tmp/$0-TIMESTAMP.log"

VALIDATION( ) {
    if [ $? -ne 0 ]
        echo " ERROR!: $2 ..............installation is FAILED "
        exit 1
    
    else
        echo " SUCCESS!: $2 ...............installation is SUCCESS "

    fi

}

if [ ID -ne 0 ]
    echo " Please run this script has a root user "
    exit 1

else
    echo "we are running script has a root user "

fi

yum install nginx -y

VALIDATION $? "installing nging" &>> logsfile

yum install mysql -y

VALIDATION $? "installing mysql" &>> logsfile