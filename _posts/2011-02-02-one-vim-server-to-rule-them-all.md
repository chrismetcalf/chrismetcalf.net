---
layout: post
title: One Vim Server to Rule Them All
date: 02/02/2011
github: https://gist.github.com/809040
---

Or to rule your Mac OS X spaces, at least.
I've always hated the "vim cruft" that tends to accumulate on one's machine. I try to keep my Linux virtual desktops or my Mac OS X Spaces partitioned off by topic or activity, but that tends to break down after a few days of hacking.
Finally inspried by nicoe's [One vim server per desktop](http://www.openhex.org/notes/2011/1/27/one-vim-server-per-desktops) post, I ported his solution from Linux to OSX and ended up with the following script:
<script src="https://gist.github.com/809040.js?file=gistfile1.ebuild"></script>
It relies on Tom Feist's little "[spacefinder](https://github.com/shabble/osx-space-id)" utility, which basically dumps out the number of the current space that you're on. I wrote up a [Homebrew recipe](https://github.com/chrismetcalf/homebrew/commit/7ccd9b70678cfeae49d003f56f3a16f0ca75a573), in case that's how you roll. If you save it as a shell script somewhere in your path, it'll automatically spawn a new MacVim server instance the first time you vim in a given space, and then force all subsequent opens to that same MacVim server. Neat stuff.
