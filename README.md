# shell
This repository is used to take notes for learning shell coding, Mar 18, 2021.
### basics
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
### containers
+ `vec=(128 64 32 16 8 4)`
```
vec=(128 64 32 16 8 4)
for i in ${vec[@]}                                                                                                                                                           
do
     echo $i
done
```
### if
### for loop
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
### string operations
