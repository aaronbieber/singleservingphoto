---
layout: page
status: publish
published: true
title: Essential Reading
author: Aaron
author_login: Aaron
author_email: aaron@singleservingphoto.com
author_url: http://gallery.aaronbieber.com
wordpress_id: 229
wordpress_url: /?page_id=229
date: '2008-12-28 20:31:26 -0500'
date_gmt: '2008-12-29 00:31:26 -0500'
categories:
- Nobody's Photos
tags: []
comments: []
---

Among the years worth of articles on this site, there are a handful that are
_essential_ and _popular_; articles covering the most fundamental topics and
that are read more than any others. Here they are, in no particular order.

<ul>
{% for post in site.categories["featured posts"] %}
<li><a href="{{ post.url }}">{{ post.title | strip_newlines }}</a></li>
{% endfor %}
</ul>

If you aren't sure where to start on this blog, one or all of these articles could be a good spot.
