#!/bin/bash

read -p "Input meat temperature: " temp

if (( temp >= 120 && temp <= 130 ))
	then
		echo "rare"
	elif (( temp >= 131 && temp <= 140 ))
	then 
		echo "medium rare"
	elif (( temp >= 141 && temp <= 150 ))
	then 
		echo "medium"
	elif (( temp >= 151 && temp <= 160 ))
	then 
		echo "medium well"
	elif (( temp >=161 && temp <=170 ))
	then
		echo "well done"
	else 
		echo"Temp is out of range"
fi

	

