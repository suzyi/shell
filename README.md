# shell
This repository is used to take notes for learning shell coding, Mar 18, 2021.
### 1 - common command lines
+ cd
  + `cd foldername` goes to specified folder.
  + `cd ..` returns back to previous folder.
+ cp
  + `cp img.png img-backup.png` is an example of copying a single file.
  + `cp -r oldfoldername newfoldername` is an example of copying a folder.
+ curl
  + `curl -LO http://images.cocodataset.org/zips/train2014.zip` downloads file from a specified web link.
+ du
  + `du -sh ./` shows the memory consumption.
+ find
  + `find ./ -name "*au*.py"` returns the location of all possile files with "au" and ".py".
  + [delete_redundant_png.sh](https://github.com/suzyi/shell/blob/main/find/delete_redundant_png.sh) is used to delete all ".png" files from current directory to reduce memory occupation.
+ ls
  + `ls` shows all files contained in current folder.
  + `ls -l | wc -l` tells you how many files are included in current folder.
+ mkdir
  + `mkdir images` creates a folder named "images".
  + `mkdir -p images/train/` creates the directory "images/train/" recursively, even if there is no "images".
+ rm
  + `rm -r foldername` is used to delete a folder (and all files contained within it).
+ tar
  + `tar -xvf file.tar` uncompresses "file.tar" to the folder "file/", where -x is extraction, -v is verbose meaning that displaying all info during extraction, -f is using the same file folder name.
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
+ `if [ -d readme.txt ]` is False, `if [ ! -d readme.txt ]` is True, and `if [ -d folder/ ]` is True where -d means directory.
+ `if [ -z "$1" ] ` is True if the length of the 1st input is zero.
### 4 - loop
+ for loop
  + [loop-over-integers.sh](https://github.com/suzyi/shell/blob/main/loop/loop-over-integers.sh)
  + [loop-over-odd-numbers.sh](https://github.com/suzyi/shell/blob/main/loop/loop-over-odd-numbers.sh)
  + [loop over serveral strings](https://github.com/suzyi/shell/blob/main/loop/loop-over-strings.sh)
  + [rename-some-files.sh](https://github.com/suzyi/shell/blob/main/loop/rename-some-files.sh)
+ while loop
### 5 - string manipulation
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
### 7 - commonly used scripts
+ To calculate the time consumption of a piece of code within shell, use [runtime.sh](https://github.com/suzyi/shell/blob/main/runtime.sh)
+ To specify some inputs to a shell file, run `bash input_to_shell.sh 43 somewords` for example, then an integer 43 and a string is passed to [input_to_shell.sh](https://github.com/suzyi/shell/blob/main/input_to_shell.sh).
