---
layout: post
title: Microsoft Code Comments
author: Chris Metcalf
date: 2004/02/17
slug: microsoft-code-comments
category: general
tags: [ general ]
---

<a href="http://www.kuro5hin.org/">Kuro5hin</a> has a great piece up showing some of the juciest comments from the leaked Windows 2000 code. Some of these quotes are hilarious:

        private\ntos\w32\ntuser\client\dlgmgr.c:

        // HACK OF DEATH:

        private\shell\lib\util.cpp:

        // TERRIBLE HORRIBLE NO GOOD VERY BAD HACK
        private\ntos\w32\ntuser\client\nt6\user.h:

        // The magnitude of this hack compares favorably with that of the national debt.

And another good one: 

private\shell\ext\tweakui\genthunk.c:

        /* CallProc32W is insane. It's a variadic function that uses
        * the pascal calling convention. (It probably makes more sense
        * when you're stoned.) */
