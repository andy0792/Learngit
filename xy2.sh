#!/bin/sh
## scripts name: xy2.sh
xy()
{
_R=$1
_C=$2
_TEXT=$3
tput cup $_R $_C
echo -n $_TEXT
}
clear
xy 5 10
echo -n "Enter your password :" 
read CODE
