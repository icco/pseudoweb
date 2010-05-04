---
layout: post
title: Building a reputation system
location: San Luis Obispo, CA
---

*This was originally posted on [ifixit.com/blog][1]*

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

[1]: http://ifixit.com/blog/
[2]: http://ifixit.com/Answers/

