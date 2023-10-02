#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "Binary name is missing."
    exit 1
fi

make fclean
sed -i s/tmp.out/$1/g Makefile
sed -i s/tmp.out/$1/g .gitignore
rm README.md
touch README.md
rm scripts/init.sh
