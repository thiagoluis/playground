#!/bin/bash

n=$1

[[ $n -le 0 ]] && echo Incorrect argument! && exit 1

j=1; factorial=1

#while [ $j -le $n ]
until [ $j -gt $n ]; do
    factorial=$(( $factorial * $j ))
    j=$(( $j + 1 ))
done

echo The factorial of "$n"'!' is: $factorial
