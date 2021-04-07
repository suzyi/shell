#!/bin/bash
for file in *.png
do
    cp ${file} ../../processed/test/circle_${file}                                                                                                              
done
echo "done"
