#!/bin/bash

echo -n "Post title? ";
read -e TITLE;
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
   echo "layout: post" >> $FILENAME
   echo "title:" $TITLE >> $FILENAME
   echo "location:" $LOC >> $FILENAME
   echo "time:" $TIME >> $FILENAME
   echo "---" >> $FILENAME
fi

vim $FILENAME;
   
