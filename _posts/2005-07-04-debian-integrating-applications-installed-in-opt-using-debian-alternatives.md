---
layout: post
title: Debian -  Integrating applications installed in /opt using Debian &quot;alternatives&quot;
author: Chris Metcalf
date: 2005/07/04
slug: debian-integrating-applications-installed-in-opt-using-debian-alternatives
category: 
tags: [ hacks, linux, software ]
---

Some <a href="http://www.debian.org">Debian</a> developer will probably see this and  yell at me for doing something very evil, but I find this trick quite useful and thought I'd share it with the world. You might notice I also made use of it in my <a href="/blog/archives/2005/05/19/mini-howto-installing-java-on-debian-unstable/#more-215">Debian Java</a> mini-howto.
The Debian "alternatives" system is basically a set of utilities designed for manipulating what is no more than a complex collection of symlinks. However, the flexibility it affords users is wonderful. It allows the administrator to set up intelligent "default versions" for system utilities such as editors, pagers, and terminals.
And it also, if you abuse it slightly, gives you an easy way to manage applications installed into /opt.
Debian, as you might know, isn't that great at always packaging applications that don't agree with its "social contract". So you'll usually find yourself jumping through hoops to get anything that involves Java installed. I install apps like Eclipse, Azureus, and VMWare into directories in /opt (/opt/eclipse, /opt/azureus, etc). And then I use update-alternatives to add intelligent symlinks back into the main system:
<code>update-alternatives --verbose --install [desired symlink] [name] [executable location in /opt/whatever] 500</code>
For a specific example:
<code>update-alternatives --verbose --install /usr/bin/vmware vmware /opt/vmware/bin/vmware 500</code>
If you also want to install a link for the manpage, you can also do that:
<code>update-alternatives --verbose --install /usr/bin/vmware vmware /opt/vmware/bin/vmware 500 --slave /usr/share/man/man1/vmware.1 vmware.1 /opt/vmware/man/man1/vmware.1</code>
(I know that actually points to the manpage of the vmware XF86 driver, but you get the idea...)
And since all the links are tracked by update-alternatives, I can easily remove them when I uninstall the application:
<code>update-alternatives --remove-all vmware</code>
