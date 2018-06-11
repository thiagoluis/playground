#!/bin/bash
# $# - number of args
# exit != 0 it's mean a error.

[[ "$#" != "1" ]] && echo You must pass one argument! && exit 1
echo You pass one argument: $1
exit 0
