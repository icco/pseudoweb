--- 
wordpress_id: 173
layout: post
title: Find and Grep
wordpress_url: http://pseudoweb.net/?p=173
---
My good friend <a href="http://www.prenticew.com">Prentice</a> posted a <a href="http://www.incognitomind.com/?p=339">blog entry about using grep recursively</a>. While I agree, this is pretty cool, I've recently fallen in love with using find to find things (what a crazy concept) in my code.

I got this little trick from <a href="http://davpt.com">one of my coworkers</a>, which I now use to find just about anything in my code repositories:

[sourcecode language="bash"]gfind &quot;*php&quot; &quot;code I want&quot;[/sourcecode]

You'll notice that that line wont work for you, so put the following in your ~/.bashrc file.

[sourcecode language="bash"]gfind () { find . -name &quot;${1}&quot; -exec grep -Hin ${3} &quot;${2}&quot; {} \; ; }[/sourcecode]

This means that it will only look at files that end in php, so of course it will stay out of your .svn or .git directories.

But of course this isn't the best option. What if you want to call the following:

[sourcecode language="bash"]gfind &quot;*&quot; &quot;search string&quot;[/sourcecode]

You need to change the gfind definition to do the equivalent of what Prentice was doing, but with find.

[sourcecode language="bash"]gfind () { find Code -name &quot;${1}&quot; -a ! -wholename '*/.*' -exec grep -Hin ${3} &quot;${2}&quot; {} \; ; }[/sourcecode]

If you want to learn more about find or grep you can check out the man pages on your system or the Wikipedia pages for the <a href="http://en.wikipedia.org/wiki/Find_(Unix)">find command</a> or the <a href="http://en.wikipedia.org/wiki/Grep">grep command</a>.

/Nat
