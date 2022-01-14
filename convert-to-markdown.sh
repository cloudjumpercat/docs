#!/bin/zsh

#rename html files to remove the date so it's just the title of the post (MAKE SURE TO CHANGE THE DATE!)
for file in *
 do
    echo mv "$file" "$(echo "$file" | cut -c 12-)"
 done  
#need something that will select all the html files in the folder and convert them to separate markdown files
