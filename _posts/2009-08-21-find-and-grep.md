---

wordpress_id: 173
origin: http://pseudoweb.net/2009/08/21/find-and-grep/
layout: post
title: Find and Grep
wordpress_url: http://pseudoweb.net/?p=173
location: San Luis Obispo, CA

---
My good friend <a href="http://www.prenticew.com">Prentice</a> posted a <a href="http://www.incognitomind.com/?p=339">blog entry about using grep recursively</a>. While I agree, this is pretty cool, I've recently fallen in love with using find to find things (what a crazy concept) in my code.

I got this little trick from <a href="http://davpt.com">one of my coworkers</a>, which I now use to find just about anything in my code repositories:

{% highlight bash %}
gfind "*php" "code I want"
{% endhighlight %}

You'll notice that that line wont work for you, so put the following in your ~/.bashrc file.

{% highlight bash %}
gfind () { 
   find . -name "${1}" -exec grep -Hin ${3} "${2}" {} \; ; 
}
{% endhighlight %}

This means that it will only look at files that end in php, so of course it will stay out of your .svn or .git directories.

But of course this isn't the best option. What if you want to call the following:

{% highlight bash %}
gfind "*" "search string"
{% endhighlight %}

You need to change the gfind definition to do the equivalent of what Prentice was doing, but with find.

{% highlight bash %}
gfind () {
   find Code -name "${1}" -a ! -wholename '*/.*' -exec grep -Hin ${3} "${2}" {} \; ; 
}
{% endhighlight %}

If you want to learn more about find or grep you can check out the man pages on your system or the Wikipedia pages for the <a href="http://en.wikipedia.org/wiki/Find_(Unix)">find command</a> or the <a href="http://en.wikipedia.org/wiki/Grep">grep command</a>.

/Nat
