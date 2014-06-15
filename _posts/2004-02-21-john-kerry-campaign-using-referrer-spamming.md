---
layout: post
title: John Kerry campaign using referrer spamming
author: Chris Metcalf
date: 2004/02/21
slug: john-kerry-campaign-using-referrer-spamming
category: general
tags: [ general, politics ]
---

So about a week ago, I noticed something really funny showing up in my <a href="/refer/">referrer logs</a>. I kept getting referrer hits from "blog.johnkerry.com". Funny, because nowhere on blog.johnkerry.com is there a link to my site. So obviously they can't be actually clicking over from there.

<!--more-->

So I check out my server logs. I find two referrals from blog.johnkerry.com:

        172.144.61.107 - - [18/Feb/2004:01:13:28 -0500] "HEAD /blog/index.php HTTP/1.1" 200 0 "http://blog.johnkerry.com" "Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.1) Opera 7.01 [en]"
        206.65.72.35 - - [20/Feb/2004:23:59:07 -0500] "HEAD /blog/index.php HTTP/1.0" 200 0 "http://www.blog.johnkerry.com" "StarProse Referrer Advertising System 2004"

Hmm... Interesting. So I check out where those IP's are coming from.

        -=[krezel@metcalf ~]=-
        -=>resolveip 172.144.61.107
        Host name of 172.144.61.107 is AC903D6B.ipt.aol.com
        -=[krezel@metcalf ~]=-
        -=>resolveip 206.65.72.35
        Host name of 206.65.72.35 is bess-proxy.cajun.net

It looks like at least one of the hits came from somebody's home PC connected via AOL, and the other seems to be connected through some sort of open proxy.

Next step, obviously is to do some googling.

A search for "StarProse Referrer" comes up with a few interesting hits. I get a couple of hits to actual <a href="http://www.soft32.com/download_16563.html">software listings</a> for "StarProse Referrer Advertising System 2004":

    Referrer Advertising is a new concept in which your website address is sent to thousands of public websites which publish there referrer statistics.

    Referrer advertising can be very successful and does not take a huge cash investment or take up a lot of your time to get started.

    Referrer advertising does not apply to Can Spam Act of 2003.

Lovely. Some googling on <a href="http://www.google.com/search?hl=en&lr=&ie=UTF-8&oe=utf-8&q=%22blog.johnkerry.%2Bcom%22">"blog.johnkerry.com"</a> comes up with <a href="http://www.blahblahblog.com/show-refs.php">hit</a> after <a href="http://www.inluminent.com/refer/">hit</a> after <a href="http://www.vincent.com.cn/tools/refer/">hit</a> to other people's referrer logs listing "blog.johnkerry.com". And then of course lots of <a href="http://chris.quietlife.net/archives/000400.html">other</a> <a href="http://drinkme.whostolethetarts.com/archives/week_2004_02_15-2004_02_21.html#000180">bloggers</a>  also complaining about being spammed by Kerry.

I'm not going to say that I'm surprised by this. But I am very unhappy that in their quest to gain some "internet cred" (and increase their google hits), Kerry and his supporters have resorted to tactics only previously used by porn and drug spammers. Unfortuantely this is will hardly ever make the evening news, no matter how low I think it is.

Oh yeah... And Dean has been <a href="http://www.hebig.com/archives/001801.shtml">doing it too</a>...
