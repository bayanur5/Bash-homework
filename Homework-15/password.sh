#!/bin/bash

read -s -p "Type your password: " passw1
echo
read -s -p "Re-type your password: " passw2
echo

if [[ $passw1 = $passw2 ]];
then
	echo "Success"
else 
	echo "Passwords don't match"
fi
