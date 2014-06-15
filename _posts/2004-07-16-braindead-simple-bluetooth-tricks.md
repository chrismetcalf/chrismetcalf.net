---
layout: post
title: Braindead simple Bluetooth tricks
author: Chris Metcalf
date: 2004/07/16
slug: braindead-simple-bluetooth-tricks
category: 
tags: [ cool-tech, linux, software ]
---

Jealous of the Mac-freaks and all the cool tricks they can do with their Bluetooth cellphones, like locking their computer automatically when they walk away?

I spent a few minutes today hacking around and came up with a quick proof-of-concept script for something thats been bouncing around in my head for awhile:


        #!/bin/bash

        DELAY="20"
        BD_ADDR="FF:FF:FF:FF:FF:FF"
        LOCK_CMD="xscreensaver-command -lock"

        while true;
        do
              (sudo l2ping -s 1 -c 1 $BD_ADDR > /dev/null 2>&1 ) || $LOCK_CMD
              sleep $DELAY
        done

It periodically pings your Bluetooth phone (replace BD_ADDR with the particular BD Address of your phone). When the ping fails (when you walk out of range), it can lock your screen, pause XMMS, etc. Not bad for 5 lines of Bash script.

Now I've just got to beef it up a bit, add some more options. If I've got the time, I'll turn it into a <a href="http://www.onlamp.com/pub/a/python/2000/07/25/gnome_applet.html">Python Gnome applet</a> so you can throw it in a toolbar.
