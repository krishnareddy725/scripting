#! /bin/bash

ID=$(id -u)

VALIDATION( ) {
    if [ $? -ne 0 ]
    then
        echo "ERROR: Installation is not done properly"

    else
        echo " Installation is success "
}

if[ id -ne 0 ]
then
    echo "ERROR: Please run script as a root user"
    exit 1
else
    echo " You are a root user "
fi

yum install mysql -y

VALIDATION

yum insgtall git -y

VALIDATION