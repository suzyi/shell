### intro
`.bat` file is used on Windows, while `.sh` file is used on Linux. See [bat Command-line reference A-Z](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-xp/bb490890(v=technet.10)) for the complete official tutorial.

+ `copy`
  + `copy /y results\training-log.txt results\training-log-backup.txt`
+ `del example.txt` deltes a file.
+ `goto`
```
echo This example tells you how to comment a block
goto BlockYouWantToComment
echo working on %%w
echo working on %%w
:BlockYouWantToComment
echo This example is ended.
```
+ `rd /s /q FolderName` removes a directory.
  + `/s` removes all directories and files in the specified directory in addition to the directory itself. Used to remove a directory tree.
  + `/q` specifies quiet option meaning it won't ask for confirmation during deleting.
+ `rem rd /s /q %%w` comments this line.
+ `xcopy`
  + `xcopy 9 "%%w\" /s /e`
    + `"%%w\"` has a backslash to indicate this is a directory otherwise it will prompt to ask you for confirmation "Is this a file or a directory? F=file, D=directory"
    + `/s` copies directories and subdirectories, unless they are empty.
    + `/e` copies all subdirectories, even if they are empty.
  + `xcopy "9\config.py" "folder\config.py*"`
    + `"folder\config.py*"` has a star at the end to indicate this is a file. Besides, if "folder" doesn't exist, it will create one automatically.
### loop through a range of numbers
```
@echo off
for /l %%i in (1,1,5) do (
    echo working on %%i
    copy /y .\training-log.txt .\training-log-%%i.txt
)
```

```
@echo off
for /l %%i in (0,1,20) do (
    for /l %%j in (1,1,20) do (
        python train.py %%i %%j
)
)
```

```
@echo off
for %%x in (2ndBatchRaisin dual_wires twisted_wires_targetArea pin-upwards pin-downwards) do (
    echo your file name is %%x
    copy /y 3rdBatchRaisin\train.py %%x\train.py
    copy /y 3rdBatchRaisin\config.py %%x\config.py
    echo =-=-=-=-=-=
    )
```
