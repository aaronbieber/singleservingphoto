---
layout: post
status: publish
published: true
title: How Many Bits? Is Eight Enough?
author_email: aaron@singleservingphoto.com
author_url: http://gallery.aaronbieber.com
wordpress_id: 123
wordpress_url: /articles/2007/06/06/how-many-bits-is-eight-enough/
date: '2007-06-06 22:28:52 -0400'
date_gmt: '2007-06-07 02:28:52 -0400'
categories:
- Articles
- featured-posts
tags:
- technology
- guide
- workflow
- editing
comments:
- id: 804
  author: photographyVoter.com
  author_email: ''
  author_url: http://www.photographyvoter.com/story.php?id=900
  date: '2007-06-07 06:20:52 -0400'
  date_gmt: '2007-06-07 10:20:52 -0400'
  content: |-
    How Many Bits? Is Eight Enough?...

    If you are serious about photography, you should answer this question very carefully: "Is eight bits of color depth enough?" Explore the effects of editing in eight and 16 bits....
- id: 808
  author: Christopher Scholl
  author_email: cschollmd@gmail.com
  author_url: http://www.photographersjourney.com
  date: '2007-06-07 17:16:43 -0400'
  date_gmt: '2007-06-07 21:16:43 -0400'
  content: |-
    Wow - great article.  But I have a question.  My usual workflow is:

    Shoot in RAW, import to Lightroom and make most, if not all, changes there, export to Photoshop if necessary, and save as - presumably - a 16 bit Tiff.  I assume because I'm working in RAW, then following it with 16-bit Tiff that I'm better off than if I was saving it ultimately in 8-bit Jpeg at that point.  Are you saying I'm just wasting hard-drive space?
- id: 809
  author: Aaron
  author_email: aaron@singleservingphoto.com
  author_url: http://gallery.thebailiwick.com
  date: '2007-06-07 19:19:45 -0400'
  date_gmt: '2007-06-07 23:19:45 -0400'
  content: |-
    Thanks, Christopher! I'm definitely not suggesting that maintaining the highest bit depth possible throughout your workflow is a waste. The aim of this article was to demonstrate that a judicious use of bit depth can result in a fine compromise between storage space and print quality.

    If I need to make edits in Photoshop that would really damage an 8-bit file, I will change my Lightroom settings and load that one image in 16 bits. Most of the time, though, I have found that the edits I perform in Photoshop aren't destructive in eight bits; not enough to be noticeable in a print, at least.

    Cheers and thanks for writing.
- id: 811
  author: John Mackay
  author_email: john@wildframe.net
  author_url: http://www.wildframe.net
  date: '2007-06-09 21:30:29 -0400'
  date_gmt: '2007-06-10 01:30:29 -0400'
  content: Don't forget that you can avoid many of the destructive effects of working
    on 8 bit images if when working with PhotoShop you instead work with adjustment
    layers rather than working directly on the image itself. The good thing about
    this is that you can always come back to your curve, gradient, levels adjustment
    layers and--well adjust it to taste without causing irreversible damage to your
    image :)
- id: 815
  author: Aaron
  author_email: aaron@singleservingphoto.com
  author_url: http://gallery.thebailiwick.com
  date: '2007-06-10 20:42:32 -0400'
  date_gmt: '2007-06-11 00:42:32 -0400'
  content: |-
    John--When I say "destructive," I don't mean that unrecoverable damage is done to the file, although that may certainly be true. Because I am using a Lightroom-based workflow, I am actually editing a copy of the original file, so I can always go back to it. Your suggestion of using adjustment layers is absolutely a good one, and anyone out there who isn't using adjustment layers for as much of their editing as possible should be taking a lesson from you!

    Still, whether you use an adjustment layer or not, an 8-bit image will suffer the same aliasing and banding artifacts that I demonstrated in my examples. Those effects will be easily reversible by removing the adjustment layer, but it won't make your prints look any better!

    Thanks for taking the time to share your thoughts.
- id: 817
  author: John Mackay
  author_email: john@wildframe.net
  author_url: http://www.wildframe.net
  date: '2007-06-11 01:29:15 -0400'
  date_gmt: '2007-06-11 05:29:15 -0400'
  content: "Actually, done correctly you shouldn't see any banding artifacts at all
    when using layer adjustments. Where most people make the mistake is in creating
    an adjustment layer, say for curves or levels, where they leave the layer mode
    set to \"normal\" in which case they might as well have not bothered with the
    layers curve at all as \"an 8-bit image will suffer the same aliasing and banding
    artifacts\" as you've point out in your reply. \n\nHowever, if you set the curves
    adjustment layer to it's correct mode \"Luminosity\" there should be little if
    any clipping or banding present in the histogram.\n\nI have posted an explanatory
    PDF on my website which demonstrates this in more detail if interested:\nhttp://www.wildframe.net/documents/8bit_editing.pdf
    [Adobe Acrobat Format 500kb]"
- id: 837
  author: Randy Geske
  author_email: randygeske@yahoo.com
  author_url: ''
  date: '2007-06-13 15:56:27 -0400'
  date_gmt: '2007-06-13 19:56:27 -0400'
  content: |-
    Aaron and John,

    You're both thinking too abstractly when you need to just look at your images. 8bit color depth is plenty for 99 percent of the images. Aaron, when's the last time that you applied a levels move to a real image like the one you applied to that gradient to expand the tonal range.

    John, you're just fooling yourself if you think that final histogram in your explanatory PDF is any better. All you've done is hide your levels move in the color of the image.

    Yes, 16 bit color has more shades of gray in each channel, but 99 percent of the time you won't need them because you won't perceive the difference. We're visual artisst. Let the appearance of the image rule this discussion!
---
If you are serious about photography, you should answer this question
very carefully: _Is eight bits of color depth enough?_ Today I will
uncover some truths about bit depth; explain what it means, demonstrate
what it can do for you, and answer the question that gets so many
photographers hot under the collar: _8-bit or 16-bit?_

It's never as simple as it sounds.~~MORE~~

## What Is Bit Depth?

If you already know what bit depth is all about, you can skip this
section. Without getting into too much technical detail, bit depth
describes how many colors (or shades of gray) an image is capable of
storing (for the sake of simplicity, I will be discussing grayscale
images in this article). Eight bits of color depth means that an
eight-digit binary number is available to store the value of each pixel
in the image ((In a color image, eight bits are used to store each of
the red, green, and blue values for each pixel, which is why you
sometimes see images referred to as "24-bit." An 8-bit color image and a
24-bit color image are the same thing.)). With eight digits in binary
you can count up to 255. Including zero, that gives you 256 available
shades of gray for each pixel in an 8-bit grayscale image. Zero is black
and 255 is white. Making sense?

As you might predict, a 16-bit image gives you a 16-digit binary number
to store your pixel information. With a 16-digit binary number, you can
count up to 65,535! Including zero, that gives you 65,536 shades of gray
to work with. Clearly there are immediate theoretical advantages to
using 16 bits of color depth in photography.

## The Case for More Depth

If all cameras captured images with eight bits of depth, there would be
no debate; converting from an 8-bit image to a 16-bit image doesn't do
much for you, as I've casually proven in a few tests (which I won't bore
you with). However, cameras that capture in RAW format (which includes
basically all DSLR cameras today), capture about 12 bits per pixel of
data ((That means 12 bits each for red, green, and blue per pixel,
roughly, but the specifics of different sensors and the exact math is
not important for this discussion.)).

The savvy among you will already have thought, _But 99% of printers
today can only output eight bits, so who cares!_ You are correct.

But you're also wrong.

The trick to this bit depth discussion is that you don't need the extra
bits to print your image. In fact, if you took pristine photos in 8-bit
JPEG and printed them without ever touching a pixel, you'd be fine;
you'd lose nothing. But I suspect most of you are photographers and you
know that post-processing is increasingly important, if not necessary.
It is for the _editing_ that you need more bits. Let me explain why.

## The Bit Crusher (aka Photoshop)

When I was discussing
[histograms](/2007/06/03/histograms-huh.html),
I mentioned in passing that making changes using _e.g._ levels or
curves causes Photoshop (or the editor of your choice) to expand or
compress the range of tones in the image, redistributing their values.

That sounds a lot more complicated than it is, which is why I like to
use illustrations. Below, you will see a very subtle gradient that
proceeds from a gray value of 90 on the left to 160 on the right. As you
should be able to tell, there is no pure black and no pure white in this
image.

![](/articles/8vs16/Figure-1.jpg)

In the 8-bit space, if I use levels to expand the tonal range of the
image, you will see that a lot of dithering and banding occurs. What
Photoshop is doing, very simply, is making the gradient start at a pixel
value of zero and end at a pixel value of 255. The values of the
intermediate pixels are then redistributed.

If you look closely at the image below you will see that the results
aren't too great, and it's because there are a limited number of gray
tones to choose from when averaging out the intermediate pixel values.

![](/articles/8vs16/Figure-2.jpg)

Here is the center area of the above image scaled by 300% so you can see
exactly what's going on.

![](/articles/8vs16/Figure-3.jpg)

So what happens if you have 16 bits? To find out, I created a 16-bit
image exactly the same size as the ones above, drew an identical
gradient, and performed the same levels adjustment (numerically, to be
sure it was done precisely the same way). Because Photoshop has _256
times_ more gray values to choose from when redistributing the
intermediate pixels, the gradient still looks pretty nice. In order to
show you the result, I had to save it as an 8-bit JPEG, but as you can
see below, converting to eight bits after doing the edit produces a
noticeably better result.

![](/articles/8vs16/Figure-4.jpg)

Again, here is the middle section of the above image scaled to 300%.

![](/articles/8vs16/Figure-5.jpg)

I have racked my brain for a couple of days trying to come up with a
lucid explanation for why editing in 16 bits and converting to eight
produces a better result than editing in eight bits directly, but I'm no
mathematician and regardless of the mechanics behind it, this workflow
obviously delivers.

## Putting 16 Bits to Good Use

{% random right %}

I spent a good deal of time putting this article together and building
these examples, and I think I've proven almost without a shadow of a
doubt that editing in a 16-bit space is noticeably beneficial. So you
would probably think that I have a hard drive full of 16-bit Photoshop
files, but you'd be wrong.

As I hope I have demonstrated in the examples above, 8-bit files are
most vulnerable to what I call "broad tonal changes," which describes
levels, curves, or any adjustment that expands or compresses your tonal
range. These are the types of edits that would cause your 8-bit
histogram to be divided into many separate lines, as I showed in my
[histograms article](/2007/06/03/histograms-huh.html).
For that reason, those types of edits should be performed in the largest
bit depth possible within your workflow to prevent banding and aliasing.

I like to make my broad tonal changes with the Develop module within
Lightroom while the file is still a native 12-bit RAW. Once the
histogram is compressed or expanded to my satisfaction, I will drop it
into an 8-bit PSD for local edits if I have to, and save it that way.
If, somewhere down the line, 16-bit printing becomes the norm, I can
always re-process those files as 16-bit PSDs and print them. Somehow,
though, I think I'll be on to bigger and better things by then. One can
hope, at least, right?

{% random left %}

The 8-bit versus 16-bit debate is one steeped in personal preference,
and somehow has mutated into a rather divisive topic. I hope I've shown
that no matter what your workflow preferences may be, you can benefit
from the flexibility of 16-bit editing without filling your hard drives
or waiting for your computer to crunch huge files.

I'd love to hear about your personal workflow preferences, too. Just
leave a comment or drop me an e-mail!
