#!/bin/bash
# Lists the posts to publish, then updates them and sends them live
# by Nat Welch 2010

# TODO: Write a regex to pull the name out of the file and update the published
# post's name and date.

POSTS=`ls _drafts/ | grep '-' && echo 'exit'`;

select opt in $POSTS; do
   if [ $opt == 'exit' ]; then 
      exit 0; 
   fi;

   NEWT=`date +%Y-%m-%d`-`grep -P '^title: ([\w ]+)$' _drafts/$opt | tr "[:upper:]" "[:lower:]" | sed 's/^title: //'  | sed 's/ /-/g' | sed 's/[^A-Za-z0-9\-]//g'`

   echo "Publishing: $opt.";
   echo "git mv _drafts/$opt _posts/$NEWT"
   #git mv _drafts/$opt _posts/$NEWT
   echo "git ci _drafts/$opt _posts/$NEWT -m \"Publishing $NEWT.\"";
   #git ci _drafts/$opt _posts/$NEWT -m "Publishing $NEWT."
   exit 0;
done;
