#!/bin/bash

echo -n "Please, press 1, 2 or 3: "
read number

# [ $number -lt 1 ] || [ $number -gt 3 ] && exit 1
if [[ $number -lt 1 ]] || [[ $number -gt 3 ]] ; then
    exit
fi


f1() {
    echo number one
}
f2() {
    echo number two
}
f3() {
    echo number three
}

f$number
exit 0
