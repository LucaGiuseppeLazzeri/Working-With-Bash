c:
set curdir=%cd%
REM this version uses a block structured if then else..
set /p directory=What directory do you want to check for exe files?
if exist %directory% (
 cd %directory%
 dir /w *.exe
) else (
 echo Directory not found.
)
cd %curdir%
set curdir=
