---

layout: post
title: Developer Experience
location: Los Gatos, CA
time: 19:46:36

---

I'm quite frustrated by clouds these days. Having now worked on one for two years (April 2012 - Now), I am still constantly amazed that there is not a better experience for prototyping ideas than the following:

 1. Go to [github](http://github.com)
 2. Click the + in the top right, click `New Repository`.
 3. Fill out the form
    * Enter witty name
    * Twitter post like description
    * Click the button to initialize the repo with a README.
    * Select dropdown and type `ru` to add a `.gitignore` for Ruby
    * Select dropdown and select MIT or GPLv2 depending on the days mood
 4. Click Create Repository
 5. Now on repo page, select the SSH clone URL, cmd-c
 6. Swipe right to get to my Terminal
 7. type `cd Pr<tab>`
 8. type `git clone ` and then cmd-v
 9. type `cd ra<tab>`
 10. Code application
    * I tend to use [padrino](http://www.padrinorb.com/) for my small sites so I run `history | grep padrino` to find the generation string I last used, then `cd ..; padrino g project random.academy -i -e erb -d activerecord -c sass -t minitest`.
    * If this project needed a database, I would then start up [Postgres.app](http://postgresapp.com/), but I don't.
    * Finally, I open vim and start coding.
