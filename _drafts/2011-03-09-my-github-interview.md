---

layout: post
title: My GitHub Interview
location: San Francisco, CA
time: 09:43:15
published: false

---

NOTE: I'm pretty sure I'll never post this. I'm basically keeping it here for historical sense.

I've debated posting this. Interviews are an interesting beast, because if you get the job, you really don't care anymore, but if you don't, you just want to forget and move on. On March 1st, 2011, I had an interview with [Chris Wastranth][], the CEO of [GitHub][]. I didn't get the job, but it was by far the most enjoyable and interesting interview I've ever had. So I figured I would write about my experience here. As a warning, most of this is from memory. So if any fact seems wrong, please leave a comment or [shoot me an email](mailto:nat@natwelch.com). Also this is a pretty long post, so please bare with me.

[GitHub]: http://github.com
[Chris Wastranth]: http://chriswanstrath.com/

Over Christmas break, I started thinking carefully about what I wanted to do when I graduated in the Spring. I had interviewed with a few larger companies, but most were uninterested because (my best guess) I refuse to give companies my GPA and because I am apparently not a "good fit". This was fine with me, because after interning at [Adobe][] for two summers and working at [iFixit][] for close to two years, I was pretty sure I enjoyed working for thirty person companies over five thousand person companies.

[Adobe]: http://www.adobe.com/
[iFixit]: http://www.ifixit.com/

Anyways, I started going through my bookmarks. Which websites did I use daily? GitHub, [delicious][], [Last.FM][], [Flickr][], [Facebook][] and Google Apps. Delicious and Flickr were both owned by Yahoo, and they seemed to be having problems. Plus the five friends I knew who interned at Yahoo didn't go back, so that had to be a sign. Last.FM wanted five years of experience of professional development experience. I don't really have that. I applied to Google, but they wouldn't take my application without a GPA back in September, so scratch that. Facebook and Twitter both feel kind of scary to me, so I put them on the back burner.

[delicious]: http://www.delicious.com/
[Last.FM]: http://www.last.fm/home
[Flickr]: http://flickr.com
[Facebook]: http://facebook.com

GitHub though, they were everything I loved in a company. They release large portions of their code into the public, Which as a Linux nerd I just drooled over. I also loved how as a company they explained everything they did. The level of transparency was just about perfect, and they liked drinking beer, which I can never fault someone for.

So, as Winter quarter was beginning, I had typed out this email. After a few days of staring at it, I pressed the send button.

Tue, Jan 11, 2011 at 11:21 PM

    Hi there Chris,

    My name is Nat Welch. This email has been siting in my drafts folder
    for a little while now, and for some reason I figure I should just get
    this over with and send it. I've been using GitHub since August 2008,
    and it has really helped me grow as a software developer. But, I am
    graduating college in June, and I was hoping maybe I could convince
    you, Mr. GitHub CEO, to hire me, young but experienced software
    developer.

    So ya, a little background about me: I am currently attending Cal
    Poly, San Luis Obispo, and I will be graduating with a degree in
    Computer Science. I have worked at iFixit.com for nearly two years,
    and I have been behind most of iFixit's community based features
    (iFixit's reputation system, iFixit.com/Answers, iFixit's Embed
    widget, our work with the Internet Archive and much more). I also do a
    lot of our system maintenance, which is entirely hosted on EC2. I know
    my way around the shell, and am a dedicated vim user. I love wearing
    lots of hats and besides programming, enjoy doing design work, public
    relations and teaching. Outside of work and school, I listen to a lot
    of music and enjoy reading. I'm also a big fan of the outdoors.

    My Resume: http://icco.github.com/Resume/
    My GitHub: http://github.com/icco
    My Website: http://natwelch.com

    Anyways, I know GitHub isn't openly hiring developers right now, but
    as this is a bit of a shot in the dark, maybe you guys could keep me
    in mind for the future? I'd love to help you guys change how the
    developers of the world work together.

    /Nat

The ending was a little cheesy, but I meant every word of it. A few hours later, I got a simple response.

Wed, Jan 12, 2011 at 7:26 AM

    What specifically would you be most interested in working on at GitHub?

Simple, but mind blowing. The first thing I wanted to put was "anything", but this was obviously [a "trap"](http://www.youtube.com/watch?v=dddAi8FF3F4). So instead, I did a brain dump of every feature I wanted on GitHub, and then rushed to class (I ended up being a few minutes late...).

Wed, Jan 12, 2011 at 8:24 AM

    Well, I'm not entirely sure, but I can definitely think of a few areas
    of the site that I would improve.

    1. Project timelines.

    I hate that it's hard to grep out from the initial page of a project
    if a project is done by one individual or if it is worked on by a
    group. I usually go to
    https://github.com/diaspora/diaspora/commits/master and read through
    commits, but often there is a lot of information hidden in the
    comments timeline and issues. The communities discussion and the code
    seem to go hand in hand, so why isn't there a way to show all of that
    together?

    2. Dealing with deleting projects.

    Lets say I fork a repository, submit a patch, it gets pulled and then
    I delete my fork. It's hard for me to ever get back to that project.
    Example, I want to look at all of the projects I've committed to in
    the last year, but I've deleted every fork I've made, currently I
    believe this is impossible, and it would be nice data to be able to
    pull out. At the very least a timeline entry saying I deleted the
    fork.

    3. A better user timeline api.

    As far as I've seen, the only source of my actual user timeline is via
    an atom feed. This seems kind of silly considering how most of the
    other data is available via the api.

    4. Issues.

    My main problem with issues is it's hard to see what users want, what
    users have submitted patches to, and what I am working on. This seems
    like it's partially the users fault (jekyll is nicely organized
    https://github.com/mojombo/jekyll/issues, but most other projects
    aren't https://github.com/cloudhead/less.js/issues) but I would like
    to make it more intuitive for both the person leading the project to
    organize their issues, and make it easier for new users to understand
    which bugs are filed and which ones they need to file new bugs for.

    5. Do something with the job profile.

    Let users programmatically edit it (make it a gist or something), and
    let users (or maybe just paying companies?) browse other users and
    their resumes. As far as I know, it's only used to specify whether or
    not that job box shows up on the dashboard.

    If I were to summarize all of these rough feature requests, I think I
    would like to help users to better parse the data and work they are
    putting into github and then also pull as much of that data as humanly
    possible out, so that they can also analyze it themselves.

    /Nat

After that, Chris said that he would like to talk further. So after playing schedule scrabble for a little while, we were finally able to meet up.

Wed, Mar 2, 2011 at 5:14 PM

    Hey Nat,

    Thanks for coming up yesterday. I had a great time chatting — I think
    you've got a great product sense, and that's a rare (& awesome) thing for a
    developer to have.

    I hate to say it but right now we're looking for people with more
    professional Ruby/Rails experience.

    Good luck, and keep in touch!


