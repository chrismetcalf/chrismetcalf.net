---
layout: post
title: Quicksilver/Adium Away Message Hack
author: Chris Metcalf
date: 2006/07/25
slug: quicksilveradium-away-message-hack
category: general
tags: [ apple, applescript, code, hacks, macosx, open-source, quicksilver, software, tips-tricks ]
---

<strong>Update:</strong> My script no longer works with newer versions of Adium, but <a href="http://blog.ex-ile.org/">brnrdbrk</a> was kind enough to <a href="http://blog.ex-ile.org/post/48550980/quicksilver-adium-away-action">update it for 1.3</a>.
<a href="http://www.flickr.com/photos/chrismetcalf/198655470" class="tt-flickr"><img src="http://static.flickr.com/74/198655470_1b22ea9e97.jpg" class="tt-flickr" alt="Quicksilver/Adium Hack" height="278" width="378" /></a>
So I finally figured out how to write AppleScripts that hook directly into Quicksilver's "text clipping" interface. For the longest time I've wanted to be able to set away messages from Quicksilver... and now I can:
<pre>
using terms from application "Quicksilver"
	on process text ThisClipping
		tell application "Adium"
			set my status message to ThisClipping
			set my status type to away
		end tell
	end process text
end using terms from</pre>
It may not look like much, but I'm a happy boy. Put that into an AppleScript using Script Editor and save it to <code>~/Library/Application Support/Quicksilver/Actions</code>. Restart Quicksilver, and you'll be able to set any text you type in Quicksilver after the "." command as your Adium away message.
The <code>on process text</code> terms has lots of other uses too. I'm sure I'll come up with more.
