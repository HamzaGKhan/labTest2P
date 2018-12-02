#!/bin/bash

# this counts the number files in the directory

count() {
ls -l . | egrep -c '^-'
}

count
