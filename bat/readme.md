### intro
`.bat` file is used on Windows, while `.sh` file is used on Linux.
+ `copy`
  + `copy /y results\training-log.txt results\training-log-backup.txt`
### loop through a range of numbers
```
for /l %%i in (1,1,5) do (
    echo working on %%i
    copy /y .\training-log.txt .\training-log-%%i.txt
)
```
