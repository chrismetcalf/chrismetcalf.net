---
layout: post
title: Ack! Makezine-Dotted!
author: Chris Metcalf
date: 2007/05/16
slug: ack-makezine-dotted
category: 
tags: [ disaster, make, server, website ]
---

So it appears that my post about <a href="/blog/archives/2007/05/15/howto-dirt-cheap-speaker-stands">home-built speaker stands</a> has been <a href="http://www.makezine.com/blog/archive/2007/05/diy_speaker_stands.html">featured on Make Magazine's blog</a>. The sudden inrush of traffic was so dramatic that it overwhelmed my server before my <a href="http://www.tildeslash.com/monit/">monit</a> alarms could even go off. Apache spawned a shit-ton of connections, MySQL was overwhelmed, and quite quickly my whole blog went down. My box hit a 1-minute load level of around 80-90 before it finally stopped responding to connections.
Fortunately through monit's web interface I was eventually able to bring Apache down for long enough to get sshd back up. I managed to log onto my box and drop in <a href="http://mnm.uib.es/gallir/wp-cache-2/">wp-cache-2</a>, an excellent Wordpress plugin that automatically caches your posts. 5 minutes later my blog was up and running and it's now humming around at a much more reasonable level.
