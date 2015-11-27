---

layout: post
origin: http://pseudoweb.net/2010/10/25/developing-your-resume/
title: Developing Your Resume
location: San Luis Obispo, CA
time: 15:36:02

---

A resume is an important little document. It summarizes your entire
professional and academic career. Resumes are often the document that
introduces you to a new company, and remember, first impressions are always
important. Creating a resume is not always an easy task, and because I believe
that software exists to make things easier, I set on a journey awhile back to
make creating resumes easier.

As hackers, software developers and code monkeys, we have a special set of
tools. The two most important of these tools, in my opinion, are plain text
files and version control systems. But for some reason we ignore these tools
when we create our resumes. Instead, we write them in Word documents and PDFs,
both of which are not easily editable like plain text is nor easily stored in
version control.

I am here to propose an alternative, my [resume project][r-src]. This project
started as a way for me to maintain my resume, where after years, I had become
tired of having to keep track of a Word document. I often had to recreate the
whole thing whenever I gained a new job, or felt like reworking a sentence or
two. Now my resume is stored in [Markdown][md], a plain text format that
transforms into HTML quite nicely.

The project was initially inspired by [LinkedIn][] and [Jekyll][]. LinkedIn is
great, because it is easy to modify and lets you maintain an ongoing career
history. But it's still stored somewhere that I can't backup, and it is very
hard to revert to an older version (if not impossible). Jekyll is a static blog
generator. It is where I fell in love with Markdown and helped me see the
benefits to storing all of sites in version control.

I've been pretty happy with what I have produced. [My resume][r] now looks
quite attractive, and it has gotten me a few job offers. I have been constantly
tweaking it as I find better ways to say things. I've had a few people base
their resumes off of mine, and one guy changed the project so dramatically, I
was actually inspired to make mine even better. If you have a [GitHub][]
account, feel free to fork it and change it so you can have your own online
resume.

[GitHub]: http://github.com
[Jekyll]: http://github.com/mojombo/jekyll
[LinkedIn]: http://linkedin.com
[md]: http://en.wikipedia.org/wiki/Markdown
[r-src]: http://github.com/icco/Resume
[r]: http://icco.github.com/Resume/

