#!/bin/bash

for i in $@
do
    yum install $i -y

done

#sh scriptname mysql nginx git(command line arguments)