#!/bin/bash

display_tree() {
rows=$1
columns=$2

for ((i=0; i<$rows; i++))
do
	for ((j=0; j<$columns; j++))
	do
		echo -n " "
	for ((a=0; a<$(($i + 1)); a++)
	do
		echo -n "*"
	done
done
echo
done
}
display_tree
