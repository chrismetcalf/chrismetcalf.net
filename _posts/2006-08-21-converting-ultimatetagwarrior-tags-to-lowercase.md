---
layout: post
title: Converting UltimateTagWarrior Tags to Lowercase
author: Chris Metcalf
date: 2006/08/21
slug: converting-ultimatetagwarrior-tags-to-lowercase
category: 
tags: [ localhost, wordpress ]
---

Just installed <a href="http://www.neato.co.nz/ultimate-tag-warrior/">UltimateTagWarrior</a>? Converted all your categories to tags? Dissappointed that your imported categories are capitalized and capitalized tags look stupid? Fear not! Fire up your favorite MySQL client and use this simple SQL query on your Wordpress database:

<code>UPDATE tags SET tag = LOWER(tag);</code>

I found it handy so maybe somebody else will.
