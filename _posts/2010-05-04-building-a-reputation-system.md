---

layout: post
title: Building a reputation system
location: San Luis Obispo, CA
time: 11:13:44
published: false

---

This was originally meant for the [iFixit.com blog][1]. iFixit never published it, so I decided to clean it up a year later and publish it here. It should be noted that I am no longer employed by iFixit, and my views do not represent those of iFixit.

In November 2009, iFixit released [Answers][2]. When iFixit started on this project, we thought long and hard about how integral of a part iFixit wanted Answers to be in relation to the rest of the site. iFixit already had a forum system that had been coded based on the comment system throughout teardowns and guides, but it was growing very long in the tooth. So, after some debate, iFixit decided to build a new tool that rewarded users for participating in our site and promoted quality content over quantity.

To reward users for quality content, we wanted to allow the community, not just the iFixit staff, to be able to judge what was useful and what was irrelevant and of low quality. We decided on a basic reputation system, which allowed users to vote positively and negatively towards others posts, and for authors of questions to accept the answer they felt was best. That way there could be two "best" answers to every question, one the community liked and one the original poster liked. Often these line up, but this is not always the case, so we wanted to make sure everyone gained reputation when appropriate.

The reputation system was well received, but we started running into issues.  Some of our users were gaining large amounts of rep, while others were gaining very little. We had put limits in place on how fast and how often a user could do things, and these limits were being hit all far too often by some of our very active users. So we raised the limits to match our user's activity and scaled votes, so that the answers with tons of votes gave slightly less reputation.

As we sorted out the issues limiting our users, we also came across the fact that people who wrote guides also wanted and deserved reputation for content that was referenced throughout the site. So we started keeping track of a few different ways guides were being used to help others in wiki pages and in answers to questions. This was a bit of a pain, because we had to make sure our users (or some of our employees...) could not game the system easily. This required harder limits on how much reputation a user could give other users and how much reputation one could receive per day. We started noticing that some users were getting strange ratios, where they were getting 95 percent of their reputation from one user, or one user was giving all of their reputation to another user. We found after some heavy investigating that in many cases the first scenario was suspect, but not always foul play. The second scenario though, was always a user trying to game the system, so we started moderating users that were acting suspiciously, which seemed to at the very least promote fair play on Answers and throughout the rest of the site.

[1]: http://ifixit.com/blog/
[2]: http://ifixit.com/Answers/

