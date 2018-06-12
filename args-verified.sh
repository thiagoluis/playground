#!/bin/bash

# Only the numbers 1 or 2 are valids.

CODE=0
echo -n "Please enter with a number: "
read number
if [ $number -eq 1 ]; then
    export RES="Yes"
    else
        if [ $number -eq 2 ]; then
            export RES="No"
        else
            CODE=1
            RES="Invalid"
            echo You must choose between 1 or 2!
        fi
fi
echo $RES
exit $CODE
