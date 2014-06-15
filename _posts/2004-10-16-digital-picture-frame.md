---
layout: post
title: Digital Picture Frame
author: Chris Metcalf
date: 2004/10/16
slug: digital-picture-frame
category: general
tags: [ cool-tech, linux, technology ]
---

Today I finally got around to work on something that I've wanted to get done for a long time...

<a href="/uploads/panorama.jpg"><img src="/uploads/panorama_thumb.jpg" alt="linux based digital picture frame" /></a>

Pretty cool, eh? I finally stripped down an old Thinkpad i1400 that had been waiting to become a digital picture frame. Right now it's without an actual frame, so I've got the components zip-tied to a wire panel from one of those dorm-style bookshelf kits.

<!--more-->

<h3>The Hardware</h3>

Its based on a hand-me-down Thinkpad i1400 from my father, minus the DVD, floppy, battery, case, keyboard, etc etc. Basically all thats left is the motherboard and hard drive attached to the LCD without the bezel. Its got a nice big 15" LCD, so it looks quite good displaying digital photos. An old D-Link 802.11b card allows me to SSH in to add photos and configure it.

<h3>The Software</h3>

Linux, of course. I use a slimmed-down install of <a href="http://www.debian.org">Debian</a> unstable to keep things familiar. On top of that runs <a href="http://freevo.sf.net">Freevo</a> in framebuffer mode. Freevo is a great all-purpose HTPC system written in Python. Usually it's used as a free-software <a href="http://www.tivo.com">Tivo</a> alternative, but in this case I'm using it for its photo-album plugin. That also means that I can also take advantage of its great MP3 jukebox, weather, or RSS feed plugins if I want to. Could be really cool to have hanging on the wall in my bedroom so I can check the weather and <a href="http://www.engadget.com">Engadget</a> when I wake up in the morning.

<h3>The Spare Parts</h3>

<img src="/uploads/spare_parts.jpg" alt="spare parts" />

Anybody need any repair parts for a Thinkpad i1400? I'll sell em cheap...

<strong>Update:</strong> I've finally resurrected this project and <a href="/blog/archives/2008/07/20/digital-picture-frame-resurrected/">finished it up </a>using a newer laptop.
