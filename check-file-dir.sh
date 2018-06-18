#!/bin/bash

echo Please enter with a filename and directory:
read FILENAME DIRNAME

if [ -f $FILENAME ] ; then
    echo The $FILENAME was found!
else echo This file name not exist!
fi

if [ -d $DIRNAME ] ; then
    echo The $DIRNAME was found!
else echo This directory name not exist!
fi
