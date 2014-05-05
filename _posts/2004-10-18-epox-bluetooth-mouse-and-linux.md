---
layout: post
title: Epox Bluetooth Mouse and Linux
author: Chris Metcalf
date: 2004/10/18
slug: epox-bluetooth-mouse-and-linux
category: 
tags: [ linux, technology ]
---

Today I got a cool new toy:
<img src="/uploads/epox_mouse.jpg" alt="Epox Bluetooth Mouse" />
An Epox Bluetooth wireless mouse. Uber cool. And only <a href="http://www.newegg.com/app/ViewProductDesc.asp?description=26-192-001&depa=0">$41 on Newegg.com</a>
I also found it quite easy to get working on Linux. Read on for directions...
<!--more-->
I'm running Debian Linux and kernel 2.6.8.1 on my Thinkpad X31 with a built in USB Bluetooth chip. If you've got something else in your machine, I can't guarantee that this will work...
Steps:
<ol>
	<li>Go to <a href="http://www.bluez.org/patches.html">http://www.bluez.org/patches.html</a> and download the latest BlueZ patch for kernel 2.6.8. It applies cleanly against 2.6.8.1 with the exception of one line in the kernel Makefile which doesn't matter anyways. Make sure you're building all the bluetooth modules, and recompile your kernel.</li>
	<li>Edit <em>/etc/default/bluez-utils</em> and change <em>HIDD_ENABLED</em> to 1 (this is very Debian specific... basically you need to make sure hidd is started at boot). Then restart the bluez tools (<em>/etc/init.d/bluez-tools restart</em>).</li>
	<li>Move the mouse around and then use <em>hcitool scan</em> to figure out the BD address of the mouse (its like a MAC address but for bluetooth).</li>
	<li>Run <em>hidd --connect bd_address</em>. Ta-da! Your mouse should work now.</li>
	<li>Now move it around and click on things. You're done.</li>
</ol>
Now who says Linux is hard to use?
