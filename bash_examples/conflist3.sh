# Enhanced version which uses a block structured if
echo "What directory do you want to check for conf files?"
read directory
if [ -r $directory ] # make sure directory exists and readable
then
  curdir=$PWD	
  cd $directory
  # we now need to make sure some .conf files exist (or the 
  # program will crash). To do this we try the command butredirect
  # the stderr channel (2) to the null device (ie to nowhere) then
  # pipe the output (if it worked) to the wc (word count) command
  # storing the result in variable "files".
  files=$(ls *.conf 2> /dev/null | wc -w)
  if [ $files != 0 ] # the wc command did not return zero (no files) 
  then
  	ls *.conf
  else 
	echo No conf files found
  fi
  files=""  # clear temporary variable
  # cd back to the original directory 
  # held in curdir
  cd $curdir
  # delete the variable
  curdir=""
else
  echo "Directory does not exist or is not readable"
fi
