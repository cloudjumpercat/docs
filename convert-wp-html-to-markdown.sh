#!/bin/zsh

#rename html files to remove the date so it's just the title of the post (MAKE SURE TO CHANGE THE DATE!)
for file in 2022-01-11-*.html
 do
    mv "$file" "`echo $file | sed 's/2022-01-11-//'`"
 done  

#need something that will select all the html files in the folder and convert them to separate markdown files (this current one so far makes the MD files, but still has a wonky ".html" in the file name)
for FILE in * 
 do 
    reverse_markdown $FILE  >  "$FILE".md  
 done  
 
 #removes .html from the filenames
 for FILE in *.html*
  do 
     mv "$FILE" "`echo $FILE | sed 's/.html//'`" 
  done
  
 #removes layout config and word press comments
 for FILE in *
  do 
     sed -i '' 's/---.*---//g'  $FILE
     sed -i '' 's/<!--.*-->//g' $FILE
  done
