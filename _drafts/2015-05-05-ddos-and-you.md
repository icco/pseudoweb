---

layout: post
title: DDOS and You
location: NYC
time: 21:25:38

---

Do you hear horror stories of [China attacking services you use](http://arstechnica.com/security/2015/03/massive-denial-of-service-attack-on-github-tied-to-chinese-government/) or of [4Chan taking out services](http://www.wired.com/2011/12/anonymous-101-part-deux/3/) with their [Low Orbit Ion Cannon](https://en.wikipedia.org/wiki/Low_Orbit_Ion_Cannon)? And after hearing stories like that, do you think "wait. what?" or "how does this even work?" or even "why can random people take down other peoples websites?", then great! This is the article for you.

I'm here to attempt to explain the world that is Denial of Service attacks, and some things you can think about to survive in this crazy internet world.

## What is a DDOS?

A DDOS is a Distributed [Denial of Service Attack](https://en.wikipedia.org/wiki/Denial-of-service_attack). They are happening all the time on the internet, wars being played out by computers trying to make other computers inaccasible or overloaded.

The [Digital Attack Map](http://www.digitalattackmap.com/) gives you an idea of what's going on on the internet at any one time in regards to attacks. It is an interesting display of different types of attacks happening across the internet at any one time. Particularly interesting is the [gallery](http://www.digitalattackmap.com/gallery/) which shows a bunch of interesting days on the internet.

One of my recent favorites is from April 16, 2014, which is described as  "Volumetric attacks targeting Poland with sustained levels of over 100 Gbps". I haven't taken the time to figure out why this attack was made (because often such things don't make the news, nor does it matter), but it's interesting to know that much data is being thrown around. For reference, one Gigabit per second is 1,000,000,000 bits per second, or 1,000 Megabits per second.  There are 8 bits in a byte (and 8 Gigabits in a Gigabyte). So lets say a 720p Bluray movie is approximately 6.25 Gigabytes (to make the math easy, they are often in the 4 to 10 GB range), then someone was pushing two entire movies every second to computers based in Poland.

Somewhat related good tip: Google responds to search queries like "50 gigabits in gigabytes" for quick lookups of stuff like this.

[![april 16](http://pseudoweb.net/images/2015/ddos/april16.png)](http://www.digitalattackmap.com/#anim=1&color=0&country=PL&time=16176&view=map)

Digital Attack Maps actually has a fantastic [Understanding DDOS page](http://www.digitalattackmap.com/understanding-ddos/). It includes a few videos on how to use the site, what each part of the site means, and what DDOS is.

The key point here is that these attacks can come from any type of network connection. When I talk about defenses, this will be good to think about. But first lets talk about the main types of attacks using the names that the Attack Map uses.

 - TCP Connection Attacks
 
  > [TCP](https://en.wikipedia.org/wiki/Transmission_Control_Protocol) is the networking protocol of the internet. provides reliable, ordered, and error-checked delivery of data in the form of packets (unlike [UDP](https://en.wikipedia.org/wiki/User_Datagram_Protocol)). TCP connections can be made by attackers to never close. Computers (Load Balancers, HTTP Servers, Routers, PBXs, etc) have a limited number of connections they can keep open. So if someone can take and hold the connections your computer would use to connect to others, others won't be able to connect to you.
 
 - Volumetric Attacks

 > Volumetric (relating to volume, how much stuff a three demensial object can contain) is kind of exactly as it sounds. Your network connection is like a pipe ([joke](https://en.wikipedia.org/wiki/Series_of_tubes)) that can only take so much data. Also, your computer can only process so much data at once. So if someone starts sending lots of bits to your computer a few things can happen. Either responses will start to slow down as your computer takes more and more time to process the large requests or the connection becomes delayed because the badwidth between your server and the internet is dimmenished because of the increased congestion.

 - Fragmentation Attacks
 
  > Remember how I said that TCP "provides reliable, ordered, and error-checked delivery of data"? Well an attacker can basically purposely send bad data. Some examples are [SYN Floods](https://en.wikipedia.org/wiki/SYN_flood), [PING Floods](https://en.wikipedia.org/wiki/Ping_of_death), [Teardrop Attacks](https://www.juniper.net/techpubs/software/junos-es/junos-es92/junos-es-swconfig-security/understanding-teardrop-attacks.html) and [many others](https://tools.ietf.org/html/rfc1858).
 
 - Application Attacks

 > Application attacks are interesting, because they are hard to detect. They look like normal user traffic, but specifically target a part of an application that causes to bring the server to its knees. An example of this is something like, imagine a search engine that has a URL that when hit, causes uncached lookups that are very CPU intensive. Someone finds this and sends thousands of requests to this URL, which causes the servers to use up all of their CPU. 
 
Not all of these are nessisarily malicious attacks. Some users may remember the term "[Slashdotted](https://en.wikipedia.org/wiki/Slashdot_effect)", which was where a website was featured on [/.](http://slashdot.org/) and the traffic directed to their site took them offline. We still see this time to time when sites unexpectedly get featured on sites like [Hacker News](https://news.ycombinator.com/) or [Reddit](https://www.reddit.com/).

## Why do I care?

Engineering is a never ending problem of cost-benefit analysis. With no constraints, an engineering team can prepare for a large set of possibilities of failure given enough imagination, time and money. But in reality, every system has different reliability requirements. For example, my personal website, does not need to be reliable as gmail.com, which does not need to be reliable as a plane's fly-by-wire system.

Imagine your site is down for an hour. Now a day. Now a week. Will this hurt your livelyhood? Will it cost you money? 

If yes, that's a good thing to know, and you should be prepared to make investiments if you want to counteract that. As the Digital Attack Map website mentions, you can buy a lot of sustained attack power for an hour for $125. 

...

## How can I know?

...
https://docs.google.com/document/d/199PqyG3UsyXlwieHaqbGiWVa8eMWi8zzAn0YfcApr8Q/edit

## What can I do?

## Further reading?
