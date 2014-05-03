---
layout: post
title: Quick Hack -  &quot;Duh!&quot; Simple Text Preprocessing
author: Chris Metcalf
date: 2008/12/17
slug: quick-hack-duh-simple-text-preprocessing
category: general
tags: [ nix, command-line, cpp, hack, linux, simple, text, unix ]
---

Lately I've been working on a pretty hefty spec for [work](http://www.blist.com) (hint hint... it's a REST API spec). I like writing my specs in [TextMate](http://macromates.com/) using [MediaWiki](http://www.mediawiki.org/wiki/MediaWiki) markup, so I can easily post them to our internal wiki once they're ready.
One of the annoying things about this spec is that it involves dozens of examples in XML and JSON that are embedded in `<pre>` tags. I wanted to be able to develop and edit these samples as native XML and JSON files for convenience, but it was becoming a real pain to keep them updated in the main document via cut and paste. The obvious solution to this problem is a text preprocessor that would allow you to include a .xml file in the main .wiki document. There are dozens of these, but they're all a pain in the butt to use and I didn't feel like setting them up.
The solution, which couldn't possibly be more obvious, was suggested, somewhat jokingly, by a coworker of mine:
_cpp_
Yup, the good old [GNU C Preprocessor](http://en.wikipedia.org/wiki/C_preprocessor). If you run Linux, or you have a Mac (basically, any *nix), or you do any development whatsoever, chances are you have one hiding out on your machine somewhere. Chances are you're also familiar with the `#include "foo.h"`, which you've used since freshman year to have the preprocessor include the header for another C file before it passes it off to the actual compiler. But you never thought about using it to help you with your homework (or your specs) before.
Well `cpp` has a handy `-P` parameter that tells it to forgo the inclusion of the normal linemarkers it includes for the benefit of the compiler. This makes it _perfect_ for simple stuff like embedding one text file in another.
In your main document, use a `#include` statement to include your example file:
_document.txt:_
    == XML Example ==
    The following is an example of the server's response in XML:
    <pre>
    #include "example.xml"
    </pre>
_example.xml:_
    <example>
	      <message>Hello World!</message>
    </example>
Then use a simple Makefile to build your output document:
_Makefile:_
    all:
		    cpp -P document.txt document.out.txt
Using a Makefile means you can use TextMate's Makefile bundle to quickly and easily build your document.
There you go, a completely "duh" way of doing simple text includes on any *nix system.
