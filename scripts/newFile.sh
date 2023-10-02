#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "File name is missing."
    exit 1
fi

cp scripts/header src/$1 # do the thing with the makefile too

# sed -i s/#\sendSource/\t$1\n#\sendSource/g Makefile
