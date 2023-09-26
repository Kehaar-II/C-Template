#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "File name is missing."
    exit 1
fi

cp scripts/header src/$1
