--- 
layout: post
title: Delicious Summarizer
location: San Luis Obispo, CA
---

For awhile now I've been trying to come up with a good way to inspire me to
write more about current topics. The reason I had wanted to be inspired more,
beyond the general want to think about things more, was so I could reach a goal
of publishing one blog post a week. Since I want these blog posts to be
relatively centered on thoughts I've had throughout the week, I figure if
automatically I email myself a list of urls and the thoughts I had on them,
hopefully I can come up with a decent blog post.

So I wrote a little Bash script to run every Saturday morning and email me the
summary of my week, according to delicious. I will spend the rest of this
article explaining on how it works. If you would like, you can just look at the
source, located at [my GitHub](http://github.com/icco/re-delicious).

## The Script

I'm not going to tell you how to write bash scripts here, there are many TLDPs
on that subject (see the reference section). But I will do a quick walk-through.

The first few lines figure out the parameters we will be passing to the
delicious.com API, mainly the dates we want, and the specific format those
dates must be in.

After that we define the API URL that we will be getting and put the date
parameters into the proper format.

Then we make sure you've passed in the proper parameters. If you haven't we
display an error, else we put all of the URL parts together.

Finally we print out some info, and use curl to pull the data from the URL we
constructed. Note the -s on curl. This is important so we don't get garbage
filling our script about how long it took to pull down the script.

At the very end we take what we curl'd and pass it through an XSLT processor to
give us a nice format and print this out. We could have just printed out the
XML, but that is kind of a pain to read normally.

## The XSLT

I found writing XSLT files a pain. But basically this is how they work. First
you define that this is a XSLT file.

{% highlight xml %}
<xsl:stylesheet 
   version="1.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:str="http://exslt.org/strings" 
   extension-element-prefixes="str"
   exclude-result-prefixes="str" >
{% endhighlight %}

Then you need to define how to turn the XML into plain text (or what ever
format of text you want...). Note how we do matching in a similar structure to
the actual XML.

{% highlight xml %}
<xsl:output method="html" />
 
<xsl:template match="post">
   <xsl:text>&#10; ----------- </xsl:text>
   Title: <xsl:value-of select="@description" />
   <xsl:if test="@extended">
      Description: <xsl:value-of select="@extended" />
   </xsl:if>
   URL: <xsl:value-of select="@href" />
   When: <xsl:value-of select="@time" />
</xsl:template>
{% endhighlight %}

## Cron

The following is the cron command I have set up.

{% highlight cron %}
42 7 * * 6 re-delicious.sh username password | mail -s "Link summary for `date +"Week %V of %G"`" nat@natwelch.com
{% endhighlight %}

## Conclusion

talk about other ways to write this, php, python, ruby...


/Nat 

