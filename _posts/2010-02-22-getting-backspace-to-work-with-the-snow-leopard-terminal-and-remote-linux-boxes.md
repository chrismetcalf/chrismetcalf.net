---
layout: post
title: Getting backspace to work with the Snow Leopard Terminal and remote Linux boxes
author: Chris Metcalf
date: 2010/02/22
slug: getting-backspace-to-work-with-the-snow-leopard-terminal-and-remote-linux-boxes
category: general
tags: [ backspace, command-line, hackery, linux, macosx, snow-leopard ]
---

This is mostly just a note for myself, since I always seem to forget it when I set up a new OSX machine.
When SSH'ed into remote machines, usually Linux boxes running Debian, I've found that my backspace key doesn't work properly in OSX Terminal. There's a fix you can do in `termcap` that's probably more robust, but I've found that setting your terminal type to `rxvt` does the trick nicely:
![rxvt OSX Terminal Setting](http://img.skitch.com/20100223-8bta2j3kjn2ubw32q4qiesrk9j.png)
