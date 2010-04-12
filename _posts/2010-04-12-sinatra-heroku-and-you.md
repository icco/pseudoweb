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

    gem install --pre sinatra

The main two things that 1.0 support adds, is support for [less][3] and [erubis][4]. 

## Less

My friend [Reed][5] introduced me to [less][3] a little while ago. It's very
similar to CSS, but allows for you to nest things, and save information into
variables, which is pretty awesome, and generally makes CSS files easier to
read and code.

## Erubis

Since I started writting this article, I've actually given up on [erubis][4].
It's meant to be a fast version of [ERB][8], but it has a decent amount of bugs
in it, so I switched to plain [ERB][8], and have been loving every minute of
it.

## Gems on Heroku

To get gems (such as Sinatra and less) on Heroku, you need a .gems file in your
git repository. I have provided an example, but it is pretty straight forward.

    less
    erubis
    sinatra --version 1.0
    rdiscount
    sequel
    sqlite3-ruby

## Coding...

I think I'll save this for a sperate article, but you can see the code I am
writing on [GitHub][6].

## Deploying.

Deploying to Heroku is pretty easy. You can use two methods, either a Rakefile,
or just from the straight command line.

First you need to create an account on <http://Heroku.com> and then follow their 
[quickstart guide][7]. But the general overview is pretty simple. First 
`gem install heroku` then run `heroku create` in your directory. Finally run 
`git push heroku master`. Now your app is running on heroku! Also before you
start, you need to have a git repository for your project, which I assume you
know how to do.

You can also add the following to your Rakefile, so you would type 
`rake deploy` instead of `git push heroku master`.

{% highlight ruby %}
desc "Deploy to Heroku."
task :deploy do
   require 'heroku'
   require 'heroku/command'
   user, pass = File.read(File.expand_path("~/.heroku/credentials")).split("\n")
   heroku = Heroku::Client.new(user, pass)

   cmd = Heroku::Command::BaseWithApp.new([])
   remotes = cmd.git_remotes(File.dirname(__FILE__) + "/../..")

   remote, app = remotes.detect {|key, value| value == (ENV['APP'] || cmd.app)}

   if remote.nil?
   raise "Could not find a git remote for the '#{ENV['APP']}' app"
   end

   `git push #{remote} master`

   heroku.restart(app)
end
{% endhighlight %}

Anyway, I kind of rushed this, because I wrote most of the post about a month
ago and then forgot about it. Once I am happy with [theStack][6], I'll write 
another post here about coding with Sinatra, ERB, less, Sequel, and Heroku.

Hasta,  
/Nat

[1]: http://www.sinatrarb.com/
[2]: http://www.sinatrarb.com/intro
[3]: http://lesscss.org/
[4]: http://www.kuwata-lab.com/erubis/
[5]: http://www.reedmorse.com/
[6]: http://github.com/icco/thestack
[7]: http://docs.heroku.com/quickstart
[8]: http://www.ensta.fr/~diam/ruby/online/ruby-doc-stdlib/libdoc/erb/rdoc/classes/ERB.html

