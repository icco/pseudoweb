---
layout: post
title: Sinatra, Heroku and You
location: San Luis Obispo, CA
---

So there I was, done with finals, a fresh Mocha, a large piece of coffee cake
and a quiet café with a fast wireless internet connection. What should I do?
Ah ha! Code!

I have, for a while, been looking for a good place to store my thoughts. I
didn't need a to-do list, because most of the stuff I write down is more of a
"wouldn't this be cool" instead of a "you need to do this in the next two
days". 

A long time ago I had started a little PHP app called theStack to do just this.
I sadly though abandoned it due to time constraints. On this day with nothing
but free time, I decided to code it up. I took a quick look at the PHP, and
said, "the hell with this, I'm going to be trendy and code this in ruby."

The first thing I needed was to figure out how to code ruby for the web. I had
heard rails was awesome, but I also heard that it had a ton of overhead. Then I
remembered [Sinatra][1]. Sinatra is a nice, small, and easy web framework that
is really easy to learn. I read through the [readme][2] and started coding.

The readme is misleading. One thing it does not mention is that all of its code
is for Sinatra >= 1.0, which, until recently, the ruby gem did not install by
default. Also, since I had planned on deploying this to Heroku, I needed to
figure out how to get Heroku using the correct version of Sinatra (Heroku, by
default, uses 0.9.4).

To install the correct version of Sinatra on your local machine is quite easy
now that 1.0 has been released, but if for some reason you are trying to get
the delopment build instead of the stable build, you can add `--pre` to the gem
install:

{% highlight %}
    gem install --pre sinatra
{% endhighlight %}

The main two things that 1.0 support adds, is support for [less][3] and [erubis][4]. 

## Less

My friend [Reed][5] introduced me to [less][3] a little while ago.

Describe erubis

describe the .gems file for Heroku

Explain coding your app

explain deploying and rake file.

Hasta,  
/Nat

