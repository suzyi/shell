# shell
This repository is used to take notes for learning shell coding, Mar 18, 2021.
### 1 - basics
+ cd
  + `cd foldername` goes to specified folder.
  + `cd ..` returns back to previous folder.
+ cp
  + `cp img.png img-backup.png` is an example of copying a single file.
  + `cp -r oldfoldername newfoldername` is an example of copying a folder.
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
### 3 - if
```
  1 #!/bin/bash
  2 for ((i=0;i<10;i=i+1));do
  3     if [ ${i} -lt 5 ];then # -lt: less than, -gt:greater than, -ne: not equal
  4         echo ${i}
  5     fi
  6 done
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
  1 #!/bin/bash
  2 for file in *.png
  3 do
  4     cp ${file} ../../processed/test/circle_${file}                                                                                                              
  5 done
  6 
  7 echo "done"
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
