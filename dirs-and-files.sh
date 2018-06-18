#!/bin/bash

# https://courses.edx.org/courses/course-v1:LinuxFoundationX+LFS101x+1T2017/course/
# Linux Foundation - Introduction to Linux - Shellscript - Section 2 - Lab2
# This script is a adaptation of "Working with Files and Directories in a Script"

#Prompts the user for a directory name and then creates it with mkdir.
#Changes to the new directory and prints out where it is using pwd.
#Using touch, creates several empty files and runs ls on them to verify they are empty.
#Puts some content in them using echo and redirection.
#Displays their content using cat.
#Says goodbye to the user and cleans up after itself.

CUR_DIR=$(pwd)

echo Please enter with a directory name:
read NEW_DIR

[[ -d $NEW_DIR ]] && echo The $NEW_DIR already exists! && exit

mkdir $NEW_DIR 2> /dev/null
[[ $? != '0' ]] && echo "'$NEW_DIR' is a invalid name!" && exit

cd $NEW_DIR
pwd

for n in 1 2 3 4
do
    touch file$n
done

ls file?

for names in file?
do
    echo The content of file: $names
done

cat file?

cd $CUR_DIR

echo "Do you want to remove $NEW_DIR [press y to confirm]?"
read PROMPT

[[ PROMPT = "y" ]] && rm -rf $NEW_DIR

echo "Goodbye my friend!"
