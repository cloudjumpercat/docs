#!/bin/zsh

#rename html files to remove the date so it's just the title of the post (MAKE SURE TO CHANGE THE DATE!)
for file in 2022-01-11-*.html
 do
    mv "$file" "`echo $file | sed 's/2022-01-11-//'`"
 done  
#need something that will select all the html files in the folder and convert them to separate markdown files
