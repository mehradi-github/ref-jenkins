#!/bin/bash

FIRST_NAME=$1
LAST_NAME=$2
SHOW=$3

if [ $SHOW == 1 ] 
then
    echo "Hello, $FIRST_NAME $LAST_NAME"
elif [ $SHOW == 2 ]
then
    echo "Hello, Dear"
else
    echo "If you want to see name, please choose the SHOW"
fi    