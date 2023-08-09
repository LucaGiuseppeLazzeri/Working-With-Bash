c:
set curdir=%cd%
REM Prompt for directory name, if it exists cd to it and list .exe files
set /p directory=What directory do you want to check for exe files?
if exist %directory% cd %directory%
if exist %directory% dir /w *.exe
cd %curdir%
set curdir=
