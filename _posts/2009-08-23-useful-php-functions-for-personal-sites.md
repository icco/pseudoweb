--- 
wordpress_id: 182
layout: post
title: Useful PHP functions for personal sites
wordpress_url: http://pseudoweb.net/?p=182
---
I got the last two of my wisdom teeth pulled yesterday, and as such, I spent the day taking drugs, watching movies, and finally redoing <a href="http://natwelch.com">natwelch.com</a>.

I've decided to post some basic, but fun little snippets of PHP I've used on my personal site over the years here now that I got syntax highlighting working on my blog.

First and foremost is the age function. Given a birthdate,  it returns a formated age.

{% highlight php %}
<?php
function age() {
   // Your Birthday...
   $bday = mktime(17,0,0,2,22,1988);
   $diff = time() - $bday;
   $diff = $diff/(60*60*24*365.25);
   return sprintf("%2.2f",$diff);;
}
?>
{% endhighlight %}


Of course this would be better if it was written so your birthday was passed in via a variable, but meh, I wrote it awhile ago.

This next piece of code is from <a href="http://binarybonsai.com/code/timesince.txt">Michael Heilemann</a> but I've modified it a little, and I use it a lot, so I'll post it here as well. It prints the time since a specified date in a kind way.

{% highlight php %}
<?php
function time_since($original) {
   // array of time period chunks
   $chunks = array(
      array(60 * 60 * 24 * 365 , 'year'),
      array(60 * 60 * 24 * 30 , 'month'),
      array(60 * 60 * 24 * 7, 'week'),
      array(60 * 60 * 24 , 'day'),
      array(60 * 60 , 'hour'),
      array(60 , 'minute'),
   );

   $today = time(); /* Current unix time  */
   $since = $today - $original;

   if($since > 604800) {
      $print = date("M jS", $original);

      if($since > 31536000) {
         $print .= ", " . date("Y", $original);
      }

      return $print;
   }

   // $j saves performing the count function each time around the loop
   for ($i = 0, $j = count($chunks); $i < $j; $i++) {
      $seconds = $chunks[$i][0];
      $name = $chunks[$i][1];

      // finding the biggest chunk (if the chunk fits, break)
      if (($count = floor($since / $seconds)) != 0) {
         // DEBUG print "<!-- It's $name -->\n";
         break;
      }
   }

   $print = ($count == 1) ? '1 '.$name : "$count {$name}s";

   return $print . " ago";
}
?>
{% endhighlight %}

And here is my favorite function that I wrote to parse twitter messages. It turns hashtags, urls, and replies into proper links using regex.

{% highlight php %}
<?php
function twitterParse($in) {
   $pieces = explode(" ", $in);

   foreach($pieces as &$word)
   {
      if($word) {
         if($word[0] == "@")
            $word = "<a href=\"http://twitter.com/" .
             preg_replace("/(@|[^[:alnum:]])/","",$word) . "/\" >" . $word .
             "</a>";
         else if($word[0] == "#")
            $word = '<a href="http://twitter.com/search?q=%23' .
             preg_replace("/#/","",$word) . '" >' . $word . "</a>";
         else if($word[0] == "h")
            $word = preg_replace('`((?:https?|ftp)://(\S+[[:alnum:]])/?)`',
             '<a href="$1" alt="\2">\1</a>', $word);
      }
   }

   return implode(" ", $pieces);
}
?>
{% endhighlight %}

Anyway, I hope these tidbits are useful. Sorry about the bad indentation, I haven't quite gotten the hang of the wordpress plugin, <a href="http://wordpress.org/extend/plugins/syntaxhighlighter/">Syntax Highlighter Evolved</a> yet.

/Nat
