---
layout: post
title: Building a reputation system
location: San Luis Obispo, CA
published: false
---

*This was originally posted on [iFixit.com/blog][1]*

In November 2009, iFixit released [Answers][2]. When we started on this
project, we thought long and hard about how integral of a part we wanted
Answers to be in relation to the rest of the site. We already had a forum
system that we had coded based on our comment system throughout our teardowns
and guides, but it was growing long in the tooth, so we decided to build a new
tool that rewarded users for participating in our site and promoted quality
content over quantity.

To reward users for quality content, we wanted to allow the community, not just
the iFixit staff, to be able to judge what was useful and what was irrelevant
and of low quality. We decided on a basic reputation system, which allowed
users to vote positively and negatively towards others posts, and for authors
of questions to accept the answer they felt was best. That way there could be
two "best" answers to every question, one the community liked and one the
original poster liked. Often these line up, but this is not always the case, so
we wanted to make sure everyone gained reputation when appropriate.

The reputation system was well received, but we started running into issues.
Some of our users were gaining large amounts of rep, while others were gaining
very little. We had put limits in place on how fast and how often a user could
do things, and these limits were being hit all far too often by some of our
very active users. So we raised the limits to match our user's activity and
scaled votes, so that the answers with tons of votes gave slightly less
reputation.

As we sorted out the issues limiting our users, we also came across the fact
that people who wrote guides also wanted and deserved reputation for content
that was referenced throughout the site. So we started keeping track of a few
different ways guides were being used to help others in wiki pages and in
answers to questions. This was a bit of a pain, because we had to make sure our
users (or some of our employees...) could not game the system easily. This
required harder limits on how much reputation a user could give other users and
how much reputation one could receive per day. We started noticing that some
users were getting strange ratios, where they were getting 95 percent of their
reputation from one user, or one user was giving all of their reputation to
another user. We found after some heavy investigating that in many cases the
first scenario was suspect, but not always foul play. The second scenario
though, was always a user trying to game the system, so we started moderating
users that were acting suspiciously, which seemed to at the very least promote
fair play on Answers and throughout the rest of the site.

[1]: http://ifixit.com/blog/
[2]: http://ifixit.com/Answers/

