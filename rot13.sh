#!/bin/bash
rot13() {

echo enter a word
read $value

dual=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
phrase= $value

rotat=13
exec >  >(tee -ia rot13.log)
exec 2> >(tee -ia rot13.log >&2)

newphrase=$(echo $phrase | tr "${dual:0:26}" "${dual:${rotat}:26}")
echo ${newphrase} >&2
}

rot13
