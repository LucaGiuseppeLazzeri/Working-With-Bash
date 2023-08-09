#!/bin/bash

# Check if a filename was provided as command-line argument
if [ $# -eq 1 ]; then
  # Read in the source and destination folders from the text file
  while read -r source destination; do
    # Check if the source folder exists
    if [ -d "$source" ]; then
      # Prompt the user to confirm overwrite if the destination folder already exists
      if [ -d "$destination" ]; then
        read -p "The destination folder already exists. Overwrite? (y/n) " confirm
        if [ "$confirm" != "y" ]; then
          echo "Copy task aborted by user."
          exit 1
        fi
      fi
      # Copy the source folder and its contents to the destination folder
      cp -r "$source" "$destination"
      echo "Successfully copied $source to $destination."
    else
      echo "Error: $source does not exist."
    fi
  done < "$1"
else
  # Prompt the user to enter the source and destination folders
  read -p "Enter the source folder: " source
  read -p "Enter the destination folder: " destination
  # Check if the source folder exists
  if [ -d "$source" ]; then
    # Prompt the user to confirm overwrite if the destination folder already exists
    if [ -d "$destination" ]; then
      read -p "The destination folder already exists. Overwrite? (y/n) " confirm
      if [ "$confirm" != "y" ]; then
        echo "Copy task aborted by user."
        exit 1
      fi
    fi
    # Copy the source folder and its contents to the destination folder
    cp -r "$source" "$destination"
    echo "Successfully copied $source to $destination."
  else
    echo "Error: $source does not exist."
  fi
fi

