#!/bin/bash

echo -n "Post title? ";
read -e TITLE;
TITLE=`echo -n $TITLE | sed 's/ /-/g' | tr "[:upper:]" "[:lower:]"`;
DATE=`date +%Y-%m-%d`;

vim _drafts/$DATE-$TITLE.md

