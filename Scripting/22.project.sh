#!/bin/bash

#Project requirement:- 
# check root user or not
# if root user, check package is already installed or not
# if installed skip and tell to user 
#  if not, install it.
#  validate it

# if not root user, through the error

ID=$(id -u)
f="Today"
TIMESTAMP=$(date +"$f-%H-%M-%S")
logfile="/tmp/$(basename $0)-$TIMESTAMP.log"

R="\e[31m
G="\e[32m
Y="\e[33m

VALIDATE( ) {
    if [ $? -ne 0 ]; then

        echo -e "$R ERROR:$2 ................ Installation is FAILED"
        exit 1
    else

        echo -e "$G SUCCESS:$2 .....................Installation is SUCCESS"
        
}

if [ ID -ne 0 ]; then

    echo -e "$R Please run script has a ROOT user"
    exit 1

else

    echo -e "$G You are a ROOT user"

fi

for i in $@

do

yum list installed $i &>> $logfile

if [ &? -ne 0 ]; then

    yum install $i -y &>> $logfile
    VALIDATE $? "installation of $i"

else

    echo -e " $i is already installed ...$Y SKIPPING $N"

fi