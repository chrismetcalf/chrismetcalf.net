---
layout: post
title: Forwarding HTTP via SSH tunnels for local development
date: 29/01/2011
tags: [ ssh, tunnelling, development, tropo ]
---

I spent far too long trying to figure this out myself, so hopefully this will help somebody else.

[![Snoqualmie Tunnel](http://farm2.static.flickr.com/1207/902004094_46b4a128bd.jpg)](http://www.flickr.com/photos/jhf/902004094/sizes/m/)

There are a ton of awesome platforms out there, such as [Tropo](http://www.tropo.com/)'s IVR and SMS technology, that interact via your code via a service or script that provide. Developing against them, however, is a pain in the ass since you need your script or API to be externally accessible on the web, and you can't always hang a port to your development machine out on the public Internet.

Some services such as [Tunnlr](http://www.tunnlr.com) will (for a fee) help you set up a web-accessible tunnel back to your development machine. However, if you have a colo or VPS available, you can easily set that up yourself for free using the following SSH command:

    ssh -gnNt -R ":$REMOTE_PORT:0.0.0.0:$LOCAL_PORT" $YOUR_VPS
    -g Allows remote hosts to connect to the port you create
    -n Redirect stdin to /dev/null 
    -N Just set up the tunnel, don't launch a shell
    -t Force pseudo-tty
    -R Set up a port on the remote machine that tunnels back to a local port
    $REMOTE_PORT The port number you'll connect to remotely
    $LOCAL_PORT Your local HTTP port to Apache, Thin, Rack, whatever

Make sure you poke a hole in your firewall remotely for <code>$REMOTE_PORT</code>. Another key
discovery for me was to add the following to my <code>/etc/ssh/sshd_config</code>:

    # For remote SSH tunnels
    GatewayPorts yes

That tells SSHD to allow remote hosts to connect to your -R forwarded ports.

Enjoy!

<em>Photo from [jhf](http://www.flickr.com/photos/jhf/)'s CC-licensed Flickr
stream</em>
