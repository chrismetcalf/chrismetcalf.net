---
layout: post
title: Easy ACPI under Linux with &quot;Hibernate&quot;
author: Chris Metcalf
date: 2005/07/12
slug: easy-acpi-under-linux-with-hibernate
category: 
tags: [ linux, software ]
---

For the longest time I avoided using ACPI for power management on my Thinkpad X31 (instead I stuck with APM) because I could never get all the little hacks lined up properly. ACPI, since it is done primarily in hardware, requires a lot of tricks to get your machine to suspend and resume properly. Switching out of X, turning off LCD backlights, resetting graphics cards, etc etc. Its a real hassle.
However, if you're fortunate enough to be running <a href="http://www.debian.org">Debian Linux</a>, you can install the "hibernate" package. Hibernate is basically sophisticated Bash script with pluggable options for all the most common ACPI hacks. I had ACPI up and running within minutes.
If you've got a Thinkpad X31 or similar machine, feel free to download <a href="/files/hibernate.conf.gz">my hibernate.conf</a> and tweak it to your purposes. The only additions beyond a fairly standard hibernate configuration I had to make were adding hooks to turn the Radeon backlight on and off.
