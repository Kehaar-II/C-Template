#!/bin/bash

templateLocation=${0%/*}/..
cp -R $templateLocation/* $PWD
cp $templateLocation/.gitignore $PWD
