#!/bin/bash
# Lists the posts to publish, then updates them and sends them live
# by Nat Welch 2010

POSTS=`ls _drafts/ | grep '-'`;

select opt in $POSTS; do
   echo "Publishing: $opt.";
   echo "git mv _drafts/$opt _posts/"
   git mv _drafts/$opt _posts/
   echo "git ci _drafts/$opt _posts/$opt -m \"Publishing $opt.\"";
   git ci _drafts/$opt _posts/$opt -m "Publishing $opt."
   exit 0;
done;

