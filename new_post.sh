#!/bin/bash
# Creates a new post in the Jekyll format.

read -p "Post title? " -e TITLE;
DTITLE=`echo -n $TITLE | sed 's/ /-/g' | sed 's/[^A-Za-z0-9\-]//g' | tr "[:upper:]" "[:lower:]"`;
DATE=`date +%Y-%m-%d`;
TIME=`date +%H:%M:%S`;
FILENAME=_drafts/$DATE-$DTITLE.md

if [ -f $FILENAME ]; then
   echo "Editing \"" $TITLE "\"";
else
   echo -n "Location? ";
   read -e LOC;
   echo "---" > $FILENAME
   echo "" >> $FILENAME
   echo "layout: post" >> $FILENAME
   echo "title:" $TITLE >> $FILENAME
   echo "location:" $LOC >> $FILENAME
   echo "time:" $TIME >> $FILENAME
   echo "" >> $FILENAME
   echo "---" >> $FILENAME
fi

git add $FILENAME
git commit $FILENAME -m "new post: $TITLE"
sleep 1
vim $FILENAME;
