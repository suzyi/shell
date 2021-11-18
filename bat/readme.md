### intro
`.bat` file is used on Windows, while `.sh` file is used on Linux.
+ `copy`
  + `copy /y results\training-log.txt results\training-log-backup.txt`
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
