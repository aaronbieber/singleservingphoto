---
layout: post
status: publish
published: true
title: Web Rules for Photographers
author_email: aaron@singleservingphoto.com
author_url: http://gallery.aaronbieber.com
wordpress_id: 127
wordpress_url: /articles/2007/06/20/web-rules-for-photographers/
date: '2007-06-20 12:44:09 -0400'
date_gmt: '2007-06-20 16:44:09 -0400'
categories:
- Articles
tags:
- technology
- tips
- guide
- web
comments:
- id: 842
  author: photographyVoter.com
  author_email: ''
  author_url: http://photographyvoter.com/story.php?id=1030
  date: '2007-06-20 12:51:30 -0400'
  date_gmt: '2007-06-20 16:51:30 -0400'
  content: |-
    Web Rules for Photographers...

    There are some simple things you can do to make your web-based content more accessible and drive traffic to your site....
- id: 843
  author: Brian Auer
  author_email: blog@epicedits.com
  author_url: http://blog.epicedits.com
  date: '2007-06-20 13:23:50 -0400'
  date_gmt: '2007-06-20 17:23:50 -0400'
  content: Thanks for sharing these good solid points. I especially like the "Sharing
    is Caring" rule. I believe that this applies to the photos themselves too -- I've
    started becoming comfortable with the whole creative commons thing lately.
- id: 844
  author: Aaron
  author_email: aaron@singleservingphoto.com
  author_url: http://gallery.thebailiwick.com
  date: '2007-06-20 13:29:25 -0400'
  date_gmt: '2007-06-20 17:29:25 -0400'
  content: |-
    Thanks for your agreement, Brian. While I really like Creative Commons and support their work in many ways, I would hesitate to release a great deal of my work under their licenses for purely selfish reasons. That said, I have released one or two of my more documentary photos for use on Wikipedia (which requires all of their media to be CC licensed or public domain), which helps to promote my work and benefits the online community at the same time.

    Sharing *is* caring!
---
{% random right %}

In the web development world (which I call home for about eight to ten
hours a day), we have a few general "rules" we follow to make websites
more usable, accessible, and effective. Photographers are a technically
savvy crowd, especially since digital has gotten so popular, but they
don't always think about things the way web developers do. Here are some
simple guidelines you can follow when promoting your work on the
web.~~MORE~~

For the most part, web standards are a great idea and those who follow
them are probably benefiting their users. At the same time, some
companies and organizations treat standards like a buffet, using what
they want and ignoring the rest, leaving many people in the lurch. A
standard is only as good as its adoption.

That said, you don't have to be a pompous standards nerd to make your
photography more accessible over the web. You just have to keep a few
basic guidelines in mind and try to follow them whenever you can. This
is by no means an exhaustive list, nor is it meant to be canon law.

## Never, Ever Say "Click Here"

The most atomic element in vanilla web design is the link. Beneath all
of the stylization, navigation, content, and so on, there are links
binding everything together. The link was the original thesis of the
Internet; its purpose for being was to create a cross-referenced volume
of information. Each link that points to another place should indicate
where it will take you when you click it. Links that say "click here" do
not tell your users anything. Mobile devices may aggregate links on a
page and when your page contains 12 links that all say "click here," how
will anyone know where they go? The World Wide Web Consortium calls this
the "human test." Machines don't much care what your links say, but
people do.

## Use Stylesheets

{% random left %}

Though the use of Cascading Stylesheets (or CSS) has been fairly
standard over the past few years (which is nice, considering the
standard itself was finalized in the '80s), I still find cases where
this best practice is completely disregarded. The reasons for using CSS
to design your page are manifold, but the top couple are
_internationalization_, and _accessibility_. By separating the
information on your page from the way the page looks (or the separation
of _style_ from _content_ as we often say), you can make it much
easier for people with disabilities to access your information, and for
people using machine translation to do so as well. Here is a nice
excerpt from Kynn Bartlett's "Teach Yourself CSS in 24 Hours" that talks
about [CSS for accessibility and
internationalization](http://www.icdri.org/Kynn/chapter21.html). (Notice
how my link text describes exactly where it will take you? Nice, eh?)

I recognize that as a photographer you may or may not have control over
the way your site is put together. Often, we rely on third parties to
build and host our sites for us. This tip is meant to raise the overall
understanding of these important issues so that you can ask the right
questions of your designer or web host before spending time and money on
a site that excludes the disabled.

## Don't Forget Alternate Text

Even though we primarily deal in visual imagery and you might wonder at
first whether your website and its content would be interesting or
useful to someone who can't see, why not do what you can to accommodate
everyone? To that end, try to make sure that every image on your site
contains alternate text using the _alt_ attribute. In HTML, it looks
like this:

` `{lang="html"}

By applying the _alt_ attribute to your image tags, you ensure that
braille readers, text-based browsers, and other alternate methods of
viewing your site can make sense of what would have been displayed there
if images were available. It's just a good practice.

## Sharing Is Caring

{% random right %}

One of the most effective methods of advertising is friendship. When
people see something interesting or entertaining on the Internet, they
want to share it with their friends. Entire sites such as YouTube, digg,
del.icio.us, and the brand new PhotographyVoter.com are based on this
principle. So what can you do to make sure your content can be shared
effectively?

The most important factor in "shareability" is whether a user can send
the URL displayed in their browser to their friends and bring those
friends directly to the exact same page of your site. In other words, if
someone comes across a photograph they like and they want to show
everyone they know, they ought to be able to copy and paste the address
from their address bar and bring all of their friends to that exact same
page.

There are two huge technical impediments to this ability: _frames_ and
_Flash_. Frames and Flash can cause the URL in the browser's address
bar never to change, which prevents people from sharing specific pieces
of content with their friends, damaging that excellent free advertising
you want to tap into. I am often asked for advice on creating or
commissioning websites and I always discourage my friends from having
their gallery sites built entirely in Flash for that exact reason.

{% random left %}

A real disappointment was when one of my photographer friends showed me
the website she purchased from a company that _specializes_ in hosting
photographers' gallery sites. The site was built using a template she
chose from a selection of designs they had available and it used frames
heavily, not only restricting how much of the browser window could be
used by content, but by obscuring the direct links to her images. Nobody
likes to have to write a whole message to someone like "I saw this great
photo, go to somesite.com, click Gallery, then click Portraits, then
scroll down a little, click on the guy with the guitar, then scroll down
a bit more to the fourth row... Count in from the left..."

That company doesn't understand their clientele!

## Conclusions

As I said earlier, the majority of photographers I know don't have the
time or inclination to learn web design, so they are at the mercy of a
third party to design and build their sites. Moreover, someone who
specializes in building websites should probably be better at it than
someone who moonlights building websites. That said, I hope these tips
come in handy as you hone your web presence or search for someone to
help you do it!

## More Information

Someone criticized this article for excluding watermarking as part of
the whole website package, which I suppose is a legitimate claim. I
talked about watermarking previously in [Protecting Your Digital
Rights](/articles/2007/04/11/protecting-your-digital-rights/,)
and it's kind of a novel, so click carefully.

Another person brought up the somewhat common act of linking to your
photos from another site, potentially abusing your bandwidth. I shied
away from that topic when writing this article because it covers more
technical server administration stuff, but if anyone really wants me to
write about it, I would be happy to explain how it can be prevented
using server configuration settings.

The bottom line is that developing and hosting a website can be a career
unto itself (I would know, I administer over 600 websites at work every
day) and there is a lot to learn about and be aware of. I hope that
these very simple items are helpful and if there is a general interest,
perhaps I will do more technical articles in the future.
