#!/bin/bash

for n in 1 2 3
do
    echo -n "$n "
done
echo
echo -n "Please, enter a number of above list: "

read month
case "$month" in
    "1") echo Jan ;;
    "2") echo Feb ;;
    "3") echo Mar ;;
    *) echo "This value wasn't created!" ;;
esac
