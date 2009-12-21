---
layout: post
title: Switching to Jekyll
location: Chester, CA
---

I love [Wordpress][6]. I've been using it since 0.7, and it has stood by my as an easy straight forward blogging system. Wordpress is incredibly flexible and easily extendible. 

The problem I have is that Wordpress has become rather bloated lately. It has a lot of features to mess around with, but I've lost the time to care about making sure it is up-to-date. Also I've been wanting to be able to work better offline for a while now. 

# First Attempts

The first thing I began doing was some research. Not a lot of systems provided what I was looking for, but [Jekyll][5], from one of the guys that works on GitHub, looked promising. I took that, and some of the other systems I found, and used them as inspiration for what I wanted to use. 

Some things that I found I liked:

 * Writing posts and saving them in markdown
 * The ability to view and work on the site offline
 * An abstract theme setup. Doesn't have to be much, but and easy way to style the blog would be nice.
 * An easy way to store what I write in version control

Jekyll met a lot of these requirements, and inspired even more of them. [Tom Preston-Werner's article][1] on why he wrote Jekyll really spoke to me, but Jekyll seemed to have some issues. First it required you to have ruby set up on your server. At the time, I did not have this, nor had I had good luck using ruby gems (which I recently discovered was because I was missing the debian package ruby1.8-dev). So I considered writing my own Jekyll clone in PHP. I didn't get very far, due to the whole me being in school thing and recently [releasing Answers][2]. 

# Jekyll

Since I had recently switched to a new web host ([HostGator][3]) which supported Ruby and I had started learning Ruby (thanks to [why\_'s guide][4]).  I decided to port my blog to Jekyll. Setting up the system was straight forward thanks to all of the [examples of people using Jekyll already][7], but I'll give a little overview for those of you interested. The results of me following these steps can be found at [icco.github.com][8]. 

 1. Create a new GitHub repository titled username.github.com.
 2. Add the files \_config.yml and README
 3. Add the folders \_posts and \_layouts
 4. Start working on your site. Every time you push to GitHub, your site will regenerate.
 5. You can also look at [this script][9] which will let you import a Wordpress blog.

I still haven't installed Jekyll on HostGator, but using GitHub's support for CNAMEs and post-receive hooks, I'll figure something out.

## Resources

Here are a list of places I looked while setting up my site.

 * [Installing Jekyll on Ubuntu](http://blog.favrik.com/2009/03/02/installing-jekyll-on-ubuntu-8-10/)
 * [Jekyll Wiki](http://wiki.github.com/mojombo/jekyll)
 * [Liquid Templating Engine Wiki](http://wiki.github.com/tobi/liquid)
 * [Markdown Test Page](http://daringfireball.net/projects/markdown/dingus)
 * [mojombo.github.com source](http://github.com/mojombo/mojombo.github.com)
 * [Installing Git+Jekyll](http://ryanelmquist.com/2009/08/17/git-jekyll/)

 [1]: http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html
 [2]: http://www.crunchgear.com/2009/11/24/ifixit-answers-do-not-return-product-to-store/
 [3]: http://www.hostgator.com/
 [4]: http://mislav.uniqpath.com/poignant-guide/
 [5]: http://github.com/mojombo/jekyll
 [6]: http://wordpress.org/
 [7]: http://wiki.github.com/mojombo/jekyll/sites "Jekyll Sites"
 [8]: http://icco.github.com
 [9]: 

