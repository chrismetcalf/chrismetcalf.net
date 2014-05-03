---
layout: post
title: 550 &quot;Sender verify failed&quot; error with Monit and Exim4
author: Chris Metcalf
date: 2006/07/15
slug: 550-sender-verify-failed-error-with-monit-and-exim4
category: 
tags: [ linux, localhost, monitoring, software ]
---

Maybe this will save somebody else some time, because I just spend about 3 hours banging my head against the wall on it.
<a href="http://www.flickr.com/photos/chrismetcalf/184232628" class="tt-flickr"><img src="http://static.flickr.com/76/184232628_32c3321357.jpg" class="tt-flickr" alt="PowerBook Stickers" height="375" width="500" /></a>
If you're getting a "550-Sender verify failed" error when Monit starts because its trying to send you an email via SMTP to let you know it's started (or if you're getting that error for just about any other reason), make sure that the email address that the message is being sent "from" actually exists.
If "monit@yourhostname.com" doesn't exist, your SMTP server will likely reject the message and cause you all sorts of trouble.
