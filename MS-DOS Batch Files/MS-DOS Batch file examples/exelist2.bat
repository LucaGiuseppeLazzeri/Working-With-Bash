c:
REM Copy the current directory
set curdir=%cd%
cd \windows
dir /w *.exe
REM cd back to the original directory
REM held in curdir
cd %curdir%
REM delete the variable
set curdir=
