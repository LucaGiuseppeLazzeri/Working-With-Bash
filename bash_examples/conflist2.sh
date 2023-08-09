# Copy the current directory
curdir=$PWD 
cd /etc
ls *.conf
# cd back to the original directory 
# held in curdir
cd $curdir
# delete the variable
curdir=""
