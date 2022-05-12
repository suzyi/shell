#!/bin/bash
for file in [ train_list.txt test_list.txt train_lmdb test_lmdb ];do
    if [ -e ${file} ];then
        echo deleting ${file}
        rm -rf ${file}
    fi
done