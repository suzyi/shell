# shell
This repository is used to take notes for learning shell coding, Mar 18, 2021.
### 1 - common command lines
+ cd
  + `cd foldername` goes to specified folder.
  + `cd ..` returns back to previous folder.
+ cp
  + `cp img.png img-backup.png` is an example of copying a single file.
  + `cp -r oldfoldername newfoldername` is an example of copying a folder.
+ du
  + `du -sh ./` shows the memory consumption.
+ ls
  + `ls` shows all files contained in current folder.
  + `ls -l | wc -l` tells you how many files are included in current folder.
+ rm
  + `rm -r foldername` is used to delete a folder (and all files contained within it).
+ mv
  + `mv oldfoldername newfoldername` is used to rename a folder.
### 2 - containers
+ `vec=(128 64 32 16 8 4)`
```
vec=(128 64 32 16 8 4)
for i in ${vec[@]}                                                                                                                                                           
do
     echo $i
done
```
### 3 - if and or
```
#!/bin/bash
for ((i=0;i<10;i=i+1));do
    if [ ${i} -gt 5 -a ${i} -lt 8 ];then # -a: and, -o: or, -gt: greater than, -lt: less than.
        echo ${i}
    fi
done
```
### 4 - for loop
+ print integers from 1 to 9.
```
#!/bin/bash
for i in {1..9};do
    echo ${i}
done
```
+ print all odd numbers/even numbers between 0 and 10.
```
#!/bin/bash
for ((i=0;i<10;i=i+2));do                                                                                                                                                 
    echo ${i}
done
```
+ batchly rename some files.
```
#!/bin/bash
for file in *.png
do
    cp ${file} ../../processed/test/circle_${file}                                                                                                              
done
echo "done"
```
### 5 - string operations
string partition or string split. For example, this often appear in batchly rename some files,
```
#!/bin/bash
# run "bash rename.sh" in command line
for file in ../original_images/*.png;do
  echo "working on ${file}" # ../original_images/1.png, ../original_images/2.png, etc.
  arr=(${file//// }) # replace all occurrences of ';' (the initial // means global replace) in the string file with a single space.
  echo ${arr[2]} # 1.png, 2.png, etc.
  cp ${file} renamed/square_${arr[2]}
done
```
### 6 - file and folder operation
Check if a component is a file or a directory.
```
#!/bin/bash
for component in ssim/*;do
    if [ -d $component ];then
        echo $component is a directory
    elif [ -f $component ];then
        echo $component is a file
    else
        echo $component is not valid. 
    fi
done
```
