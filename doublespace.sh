#!/bin/bash

space () {
echo Enter the name of the file to double space
read $1
sed '/^$/d' $1  | sed G
sed G $1 | cat -s
}

space
