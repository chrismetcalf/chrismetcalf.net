---
layout: post
title: Mini-HowTo -  Installing Java on Debian Unstable
author: Chris Metcalf
date: 2005/05/19
slug: mini-howto-installing-java-on-debian-unstable
category: 
tags: [ code, linux, software, tools ]
---

Every time I set up a new system I have to figure out how to do this again, so I decided to post instructions for my benefit and for the benefit of those who might also be having problems with this.
Debian's "Social Contract" forbids it from distributing "non-free" code as official packages. Thus, Sun's version of Java is not in any of the official mirrors. You can sometimes find third-party packages from Blackdown and other groups, but they are often out of date and annoying. I prefer to get my Java directly from Sun.
I install my JDKs into /opt and use "dummy packages" to let Debian know that I really do have Java installed. That way I can install Debian packages requiring Java to be installed and everything will go smoothly.
This mini-HowTo assumes that you're running Debian Unstable (Sid), but it should also work if you're using Testing or even Ubuntu. It also assumes you're doing all these steps as root.
<!--more-->
<strong>Installing Sun's Java on Debian Unstable</strong>
<ol>
	<li>Go to <a href="http://java.sun.com/j2se/1.5.0/download.jsp">Sun's website</a> and get yourself a copy of the J2SE Development Kit. Get the .bin package, not the RPM.</li>
	<li>Put it wherever you want to finally reside. I put all apps that don't come from Debian packages into <code>/opt</code>, so I created a <code>/opt/java</code> directory to contain all my JDKs and dropped the .bin package into there.</li>
	<li>Unpack it. Basically that means running <code>sh [package name].bin</code> and saying yes to the licensing stuff. It'll unpack itself into a new directory. Mine unpacked itself into <code>/opt/java/jdk1.5.0_03</code>.</li>
	<li>Create a symbolic link from the unpacked JDK directory to <code>/usr/local/lib/jdk</code>. For me, that meant running the command <code>ln -s /opt/java/jdk1.5.0_03 /usr/local/lib/jdk</code>.</li>
	<li>Install the java-common and equivs packages by calling <code>apt-get install java-common equivs</code>. These packages will be used to create the dummy packages.</li>
	<li>Into a suitable temporary directory (I was in <code>/opt/java</code>), copy the Java dummy package control files, using the command <code>cp /usr/share/doc/java-common/dummy-packages/*.control .</code>.</li>
	<li>Use equivs to create the dummy packages from the control files: <code>for fn in *.control; do equivs-build $fn; done</code>. You'll end up with a bunch of .deb's in your working directory.</li>
	<li>Install the dummy packages: <code>dpkg -i *.deb</code>. Now Debian knows that you've got Java installed.</li>
	<li>Still one more step to go... Now we'll use <code>update-alternatives</code> to add in Debian-friendly symbolic links for all the utilities that come with Java. Change directories into the <code>bin</code> directory of your installed JDK (<code>cd /opt/java/jdk1.5.0_03/bin</code>) and run the following command: <code>for fn in *; do update-alternatives --verbose --install /usr/bin/$fn $fn /usr/local/lib/jdk/bin/$fn 500        --slave /usr/share/man/man1/$fn.1 $fn.1 /usr/local/lib/jdk/man/man1/$fn.1; done</code>. This loop will create Debian "alternatives" for all the utilities that came with your JDK package, along with links for their man pages. Neat, eh?</li>
	<li>Now you should be able to run <code>java -version</code> as any user and get back the correct version of the JDK you installed.</li>
</ol>
All done! Enjoy your snazzy new Java install.
