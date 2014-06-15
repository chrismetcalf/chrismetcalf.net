---
layout: post
title: Remote control for Rhythmbox
author: Chris Metcalf
date: 2004/07/07
slug: remote-control-for-rhythmbox
category: 
tags: [ linux, music, software ]
---

Lately I've switched Linux music players from <a href="http://www.xmms.org/">XMMS</a> to the new upstart iTunes clone <a href="http://www.rhythmbox.org/">Rhythmbox</a>. Rhythmbox has grown up a lot since the last time I tried it, and its finally stable and fairly feature-complete. And the <a href="http://gdesklets.gnomedesktop.org/categories.php?func=gd_show_app&gd_app_id=162">Rhythmlet</a> plugin for gDesklets simply kicks ass.

But nobody ever bothered to write a command line remote control for it. So I wrote my own in a few lines of Python. Hopefully somebody else will find it useful.

Be warned. Its my first ever Python app, has no error checking whatsoever, and will probably replace all your MP3's with Prince albums. It also only recognzies three commands - "next", "back" and "playPause", mostly since those are the only three buttons Rhythmbox has in the first place.

<em>Download:</em> <a href="/uploads/remote.py.gz">remote.py</a>
