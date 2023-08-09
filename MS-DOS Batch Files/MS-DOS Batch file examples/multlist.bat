@echo off
REM Create a name of a temp file using the "random" variable.
REM Use it three times to create a longer filename.
set temp=%random%_%random%_%random%.tmp
REM use a loop to append each file onto the end of the tmp file
for %%a in (%1) do type %%a >> %temp%
REM output the result (if found, could be empty if no files found)
REM then clean up by deleting the temp file
if exist %temp% (
 more %temp%
 del %temp%
)