#!/bin/bash
# $# - number of args

[[ "$#" != "1" ]] && echo You must pass one argument! && exit
echo You pass one argument: $1
