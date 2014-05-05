---
layout: post
title: Arduino Hacks -  Using the built-in LED&#039;s and button on the LadyAda ProtoShield
author: Chris Metcalf
date: 2007/10/21
slug: arduino-hacks-using-the-built-in-leds-and-button-on-the-ladyada-protoshield
category: 
tags: [ hacks, hobbies, make, open-source, programming, projects ]
---

This week I finally received my [Arduino Starter Pack](http://www.adafruit.com/index.php?main_page=product_info&products_id=68&zenid=2d9e96d1e6416be64345215888e66614) from [Adafruit](http://www.adafruit.com). The [Arduino](http://www.arduino.cc) is an awesome, Open Source, easy to use platform for getting started in embedded programming. It uses the ATMega168 AVR processor, and there are a bunch of great Open Source toolkits for programming and working with the platform. Very fun.
One of the great things about the AdaFruit starter pack is that it comes with the [ProtoShield](http://www.ladyada.net/make/pshield/index.html), an easy daughter-board for prototyping. The ProtoShield also comes with two extra LEDs and a spare button you can wire up to use in your projects. They're great to use as built-in status LEDs or mode buttons.
But there is no documentation _anywhere_ on how to use them. Poking around at the board and looking at the [schematic](http://s3.amazonaws.com/ladyadanet/make/pshield/v5schematic.png), I eventually figured out that there were just a couple spare holes on the board that you can use to access them. But they don't lead to any of the onboard headers, so they're hard to use.
Fortunately I had a left over three-position header from the kit, so I wired it up with jumpers on the underside of the board.
[![The Ugly Underside](http://farm3.static.flickr.com/2261/1663665515_b55a11c043.jpg?v=0)](http://www.flickr.com/photos/chrismetcalf/1663665515/)
Its ugly, but it works. Now I can just run jumpers to my breadboard to take advantage of them.
[![Using the new header](http://farm3.static.flickr.com/2404/1663666595_340e7e03d3.jpg?v=0)](http://www.flickr.com/photos/chrismetcalf/1663666595/in/set-72157602570516777/)
Hopefully somebody else will find this useful.
