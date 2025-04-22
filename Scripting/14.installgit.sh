#! /bin/bash

ID=$(id -u)

if [ ID -ne 0 ]
then
    echo "ERROR: Please run script has a root user"
    exit 1

else
    echo "You are a root user below script will executed as a root user"
fi

yum install git -y

if [ $? - ne 0 ]
then
    echo "ERROR: GIT installation is failed "

else
    echo " Git installation DONE "

fi