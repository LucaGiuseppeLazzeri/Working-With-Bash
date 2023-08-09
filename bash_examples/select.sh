# Set prompt for select command
PS3="Which file do you want to list?" 
#Create a file to act as quit on menu
touch "Exit_program"
select file in *
do
  case $file in
   "Exit_program")
      echo "Exit Selected"
      break # get out of select loop
      ;;
   *)	  
      cat $file
      ;;
   esac
done
rm "Exit_program"
