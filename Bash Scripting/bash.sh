#!/bin/bash

if [ $# -eq 0 ]; then
  read -p "Enter the name of the text file: " file
else
  file=$1
fi

if [ ! -f "$file" ]; then
  echo "Error: the file $file does not exist."
  exit 1
fi

echo "Starting copy loop..."
while read -r src dest; do
  echo "Reading line: $src $dest"
  if [ ! -d "$src" ]; then
    echo "Error: the source folder $src does not exist."
    continue
  fi

  if [ -d "$dest" ]; then
    read -p "The destination folder $dest already exists. Overwrite? [y/n] " answer
    if [ "$answer" != "y" ]; then
      echo "Skipping the copy task."
      continue
    fi
  fi

  echo "Copying contents of $src to $dest..."
  cp -R "$src" "$dest"
  if [ $? -eq 0 ]; then
    echo "Copy task completed successfully."
  else
    echo "Error: failed to copy files."
  fi
done < "$file"

echo "Copy loop completed."
