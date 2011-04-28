#!/usr/bin/env bash
# Lists the posts to publish, then updates them and sends them live
# by Nat Welch 2011

POSTS=`grep -lie '^published: false$' _posts/* | grep '-' && echo 'exit'`;

echo "Publish which file?"

select opt in $POSTS; do
   if [ $opt == 'exit' ]; then 
      exit 0; 
   fi;

   # We get the title from the file instead of the filename, because it might change.
   NEWT=`date +%Y-%m-%d`-`grep -P '^title: ([\w ]+)$' $opt | tr "[:upper:]" "[:lower:]" | sed 's/^title: //'  | sed 's/ /-/g' | sed 's/[^A-Za-z0-9\-]//g'`
   NEWT="_posts/$NEWT"

   echo "Publishing: $opt.";
   echo "git mv $opt $NEWT"
   git mv $opt $NEWT
   echo "git ci $opt $NEWT -m \"Publishing $NEWT.\"";
   git ci $opt $NEWT -m "Publishing $NEWT."
   echo "sed -i -e 's/^published: false$/published: true/g' $NEWT"
   sed -i -e 's/^published: false$/published: true/g' $NEWT
   exit 0;
done;
