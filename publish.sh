#!/usr/bin/env bash
#
# Lists the posts to publish, then updates them and sends them live
# @author Nat Welch 2011

POSTS=`grep -lie '^published: false$' _posts/* | grep '-' && echo 'exit'`;

echo "Publish which file?"

# Baller insta-menu given an array.
select opt in $POSTS; do
   if [ $opt == 'exit' ]; then
      exit 0;
   fi;

   # TODO: Check if file has been added to git.

   # We get the title from the file instead of the filename, because it might change.
   # 1. Get title out of file
   # 2. Lowercase everything
   # 3. Remove title:
   # 4. Replace spaces with -
   # 5. Remove all invalid chars
   if [[ `uname` -eq "Darwin" ]]; then
     NEWT=`date +%Y-%m-%d`-`grep 'title: ' $opt | tr "[:upper:]" "[:lower:]" | sed 's/^title: //' | sed 's/ /-/g' | sed 's/[^A-Za-z0-9\-]//g'`
   else
     NEWT=`date +%Y-%m-%d`-`grep -P '^title: (.+)$' $opt | tr "[:upper:]" "[:lower:]" | sed 's/^title: //' | sed 's/ /-/g' | sed 's/[^A-Za-z0-9\-]//g'`
   fi
   NEWT="_posts/$NEWT.md"

   echo "Publishing: $opt.";

   # Rename the file incase the title has changed.
   echo "git mv $opt $NEWT"
   git mv $opt $NEWT

   # Set the file as published.
   echo "sed -e 's/^published: false$/published: true/g' -i '' \"$NEWT\""
   sed -e 's/^published: false$/published: true/g' -i '' "$NEWT"

   # fix the time (may need a more specific regex)
   echo "sed -e \"s/^time: .*$/time: `date +%H:%M:%S`/g\" -i''  \"$NEWT\""
   sed -e "s/^time: .*$/time: `date +%H:%M:%S`/g" -i '' "$NEWT"

   # Commit Like a boss.
   echo "git ci $opt $NEWT -m \"Publishing $NEWT.\"";
   git ci $opt $NEWT -m "Publishing $NEWT."

   exit 0;
done;
