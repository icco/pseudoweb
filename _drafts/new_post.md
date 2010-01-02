
For awhile now I've been trying to come up with a good way to inspire me to
write more about current topics. The reason I had wanted to be inspired more,
beyond the general want to think about things more, was so I could reach a goal
of publishing one blog post a week. Since I want these blog posts to be
relatively centered on thoughts I've had throughout the week, I figure if
automaticall I email myself a list of urls and the thoughts I had on them,
hopefully I can come up with a decent blog post.

So I wrote a little Bash script to run every saturaday morning and email me the
summary of my week, according to delicious. I will spend the rest of this
article explaining on how it works. If you would like, you can just look at the
source, located at http://github.com/icco/re-delicious.

## The script

describe script here

## The XSLT

describe xslt, why it's useful, and why it sucks

## Cron

 > 42 7 * * 6 /home/nat/Projects/re-delicious/re-delicious.sh username password | mail -s "Link summary for the `date +"Week %V of %G"`" nat@natwelch.com




/Nat 

