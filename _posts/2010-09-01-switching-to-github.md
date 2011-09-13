---
layout: post
title: Switching to GitHub
location: San Luis Obispo, CA
time:  10:52:03
published: false
---

I made this proposal to work a few days.


I would like us to entirely change how we do code development, review and deployment.

Our current system is like this:

 * Bob writes code in his own little world
 * Bob commits code to the trunk
 * If it needs to be live now, Dave merges Bob's commit into LiveCode and updates the servers.
 * Once every few weeks we update all of the servers to the current version of Trunk and reset LiveCode.

I've been thinking about this for a long time, and I am 100% positive that switching to Git and GitHub for hosting is good for us. Here is my proposed model:

 * Bob writes code in his own little world
 * Bob commits code in his own little world
 * When a feature is complete, Bob selects the commits that are the feature, and submits a pull request to iFixit Trunk.
 * Someone (Dave, Chris or Kyle) reviews the pull request. They either leave comments about things that need to change about the feature or they pull the code into Trunk.
 * If comments are left, Bob goes back and makes more commits to get the feature worthy to go live. He continues to add commits and comments to the pull request. Once the feature is deemed worthy the pull request goes through.
 * Trunk goes live every workday at 4pm.

A visual representation of this is in http://github.com/blog/712-pull-requests-2-0

Benefits:

 * More code review. Our current mode of Dave skimming over all of the commits is just not enough. As the coder base grows this taxes Dave's time and really takes any sort of discussion out of the coding process. If we start reviewing our code earlier, we can have better discussion and teach our younger coders more and keep our older coders continuously sharing their knowledge.

 * More frequent syncs. This isn't a necessity, but the closer we keep the live site and trunk, the more often we can iterate and
bring a better experience to our customers.

 * Remote source code control: We will be using a distributed version control system, so our code will be duplicated in multiple places so if disks fail or servers disappear, our code and revision history will not.

Cons:

 * Switching to Git: This will have a light learning curve. If we wanted to spend the money, we could try and get Scott Chacon to come down and teach us Git and help us make the switch, but we could easily do it ourselves.

 * A third part in our pipeline: If GitHub is down, it would require a lot more work for us to update the servers (although easier than if cominor died).

 * Timing: School starts September 20th. Doing this while school is in session is not impossible, but require a little more timing, and training everyone would probably have to be a weekend deal.

Thoughts, problems, discussion? I'm sending this to you first Dave, and then I'm going to take it to kyle if you agree.

I really think we need to do this. The more we consider putting cominor in the cloud, the more I think this needs to be done.


