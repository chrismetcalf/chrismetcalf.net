---
layout: post
title: Comments Fixed
author: Chris Metcalf
date: 2006/12/15
slug: comments-fixed
category: 
tags: [ localhost, wordpress ]
---

So it seems I broke my Wordpress template awhile ago and didn't realize how easy it would be to fix it. I'd been putting it off but I fixed it earlier today.

<a href="http://www.flickr.com/photos/chrismetcalf/305494674/" class="tt-flickr"><img src="http://static.flickr.com/113/305494674_ef497f8b7e.jpg" alt="Reflections" border="0" height="323" width="500" /></a>

It turned out I didn't have a "single.php" file for formatting the display of individual posts, so it was using the main template instead. And that template was missing a single critical tag (that I didn't know I needed to have) that plugs in the comment form.

So now you really can tell me how much I suck.
