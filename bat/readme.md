### intro
`.bat` file is used on Windows, while `.sh` file is used on Linux. See [bat Command-line reference A-Z](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-xp/bb490890(v=technet.10)) for the complete official tutorial.

+ `copy`
  + `copy /y results\training-log.txt results\training-log-backup.txt`
  + `RD /S /Q FolderName` removes a directory.
    + `/Q` specifies quiet option meaning it won't ask for confirmation during deleting.
    + `/S` removes all directories and files in the specified directory in addition to the directory itself. Used to remove a directory tree.
  + `del example.txt` deltes a file.
+ `rem RD /S /Q %%w` comments this line.
+ `xcopy 9 %%w /S /E`
  + `/S` copies directories and subdirectories, unless they are empty.
  + `/E` copies all subdirectories, even if they are empty.
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
