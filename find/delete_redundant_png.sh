#!/bin/bash
files=`find ./ -name "*.png*"`
for file in $files;do
    echo $file
    rm -r $file
done
