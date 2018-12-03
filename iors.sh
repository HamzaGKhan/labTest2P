#!/bin/bash

string='[a-z]'
number='[0-9]'

if [[ $1 =~ $string ]]
then
	echo "String"
elif [[ $1 =~ $number ]]
then
	echo "Number"
else
	echo "not a string or number"
fi
