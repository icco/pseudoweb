---

layout: post
title: DDOS and You
location: NYC
time: 21:25:38

---

## What is a DDOS?

A DDOS is a Distributed [Denial of Service Attack](https://en.wikipedia.org/wiki/Denial-of-service_attack). They are happening all the time on the internet, wars being played out by computers trying to make other computers inaccasible or overloaded.

The [Digital Attack Map](http://www.digitalattackmap.com/) gives you an idea of what's going on on the internet at any one time in regards to attacks. It is an interesting display of different types of attacks happening across the internet at any one time. Particularly interesting is the [gallery](http://www.digitalattackmap.com/gallery/) which shows a bunch of interesting days on the internet.

One of my recent favorites is from April 16, 2014, which is described as  "Volumetric attacks targeting Poland with sustained levels of over 100 Gbps". I haven't taken the time to figure out why this attack was made (because often such things don't make the news), but it's interesting to know that much data is being thrown around. For reference, one Gigabit per second is 1,000,000,000 bits per second, or 1,000 Megabits per second.  There are 8 bits in a byte (and 8 Gigabits in a Gigabyte). So lets say a 720p Bluray movie is approximately 6.25 Gigabytes (to make the math easy, they are often in the 4 to 10 GB range), then someone was pushing two entire movies every second to computers based in Poland.

Somewhat related good tip: Google responds to search queries like "50 gigabits in gigabytes" for quick lookups of stuff like this.

<center>
<iframe width="640" height="480"  scrolling="no" frameborder="0" src="http://digitalattackmap.com/embed#anim=1&color=0&country=PL&list=0&time=16176&view=map"></iframe>
</center>

Digital Attack Maps actually has a fantastic [Understanding DDOS page](http://www.digitalattackmap.com/understanding-ddos/). It includes a few videos on how to use the site, what each part of the site means, and what DDOS is.

The key point here is that these attacks can come from any type of network connection. When I talk about defenses, this will be good to think about.

 - TCP Connection Attacks
 
  > [TCP](https://en.wikipedia.org/wiki/Transmission_Control_Protocol) provides reliable, ordered, and error-checked delivery of data in the form of packets (unlike [UDP](https://en.wikipedia.org/wiki/User_Datagram_Protocol)). TCP connections can be made by attackers to never close. Computers (Load Balancers, HTTP Servers, Routers, PBXs, etc) have a limited number of connections they can keep open. So if someone can take and hold the connections your computer would use to connect to others, others won't be able to connect to you.
 
 - Volumetric Attacks
 
 - Fragmentation
 
 - Application
 

Not all of these are nessisarily malicious attacks. Some users may remember the term "[Slashdotted](https://en.wikipedia.org/wiki/Slashdot_effect)", which was where a website was featured on [/.](http://slashdot.org/) and the traffic directed to their site took them offline. We still see this time to time when sites unexpectedly get featured on sites like [Hacker News](https://news.ycombinator.com/) or [Reddit](https://www.reddit.com/).

## Why do I care?

## How can I know?

## What can I do?

## Further reading?
