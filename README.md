# Nat Welch's Blog

My blog converted to a static site using [Jekyll][j].

Most of the power of this repo comes from the `Makefile`.

 * `make drafts` - Lists all posts not published
 * `make publish` - a nice little interface to publish posts (updates filename and date based on frontmatter)
 * `make github` - Compile site and push to github pages. We do this to get LSI and a few other features [github pages][] don't support.

## Writing

 * `bundle install`
   * You might need to `brew install gsl` or `aptitude install gsl-bin` first.
 * `make new`

## About

In the words of [mojombo][]:

> I was tired of having my blog posts end up in a database off on some remote server. That is backwards. I've lost valuable posts that way. I want to author my posts locally in Textile or Markdown. My blog should be easily stylable and customizable any way I please. It should take care of creating a feed for me. And most of all, my site should be stored on GitHub so that I never lose data again.

## License

_based off of [mbleigh.github.com/README.markdown](http://github.com/mbleigh/mbleigh.github.com)_

You may feel free to re-use any part of the structure, design, and layout of this site; it is all licensed under the MIT License. However, the content of the site (blog posts and page content) is licensed under a [Creative Commons Share-Alike Attribution license](http://creativecommons.org/licenses/by-nc-sa/3.0/us/).

Copyright &copy; 2006-2014 Nathaniel Welch. Rights reserved as indicated above.

[j]: http://github.com/mojombo/jekyll
[mojombo]: http://github.com/mojombo
[github pages]: http://pages.github.com/
