#!/bin/bash

input="$1"
file_name="./configs/$input"
echo $file_name

if [ ! -f "$file_name" ]
then
  echo "${file_name} doesn't exist"
  exit
fi

dest_dir="/boot/"
conf="config.txt"

sudo cp $file_name $dest_dir$conf