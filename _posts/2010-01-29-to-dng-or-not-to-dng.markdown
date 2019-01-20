---
layout: post
status: publish
published: true
title: To DNG or Not to DNG
author_email: aaron@singleservingphoto.com
author_url: http://gallery.aaronbieber.com
wordpress_id: 373
wordpress_url: http://singleservingphoto.com/?p=373
date: '2010-01-29 15:53:16 -0500'
date_gmt: '2010-01-29 20:53:16 -0500'
categories:
- Articles
tags:
- technology
- digital
- lightroom
- workflow
- storage
- formats
comments: []
---

![DNG (tm)](/wp-content/uploads/2010/01/dng_tm.gif "DNG (tm)")

That is the question.

> Whether 'tis nobler in the mind to wrangle the proprietary formats of
> your camera manufacturer, or to take arms against a sea of sidecar
> files, and by opposing, end them...

But enough pseudo-Shakespeare for one post.

There has been some chatter on the Interwebs lately concerning the DNG format:
there are quality and archival concerns, whether it's worth converting one's
entire library to the format, what the benefits might be, and whether one ought
to care. Today, I weigh in. For what it's worth.

Coincidentally, I've used the same post title as Matt Kloskowski did in his take
on the subject on [Lightroom Killer Tips][lkt] Matt didn't add a pseudo-Hamlet
line, though, so I feel like I've done the headline proud.

[lkt]: http://www.lightroomkillertips.com/2010/to-dng-or-not-to-dng/

After the break, a complete rundown on DNG; trust me, it's going to be technical
_and_ editorial. ~~MORE~~

## What Is DNG?

Skip this section if you already know what DNG is, or read it if you want to
know what I think DNG is.

DNG is the "Digital Negative" format, spearheaded by Adobe. It is an "open"
format, and a "standard" in some sense, though not an official ISO standard
(yet). When we say that the format is "open," we mean that the precise contents
of a DNG file, its byte offsets, containers, methods of generating and reading
the files, and so forth, are publicly available. This is not the case with any
other RAW file format out there. The ability to read and write manufacturers'
RAW files (e.g.  Canon, Nikon, et al.) is either licensed from the manufacturer
or reverse-engineered.

Adobe created the standard out of, apparently, a desire to "universalize" (if
you will) the ubiquitous RAW file formats that all manufacturers have created
for themselves, and to introduce a truly interoperable format that any software
or hardware maker could employ without 1) wrangling many different formats at
once, or 2) singling out particular users of particular products ((Like yours,
for example.)).

The DNG format is based on many existing standards owned by prestigious
"standards development organizations" (or SDOs), some of which you've probably
heard of; they go by the names TIFF, JPEG, XMP, IPTC, ICC, CIE, and ZIP, to name
a few. So, although the DNG format itself hasn't been embraced by an SDO such as
the International Standards Organization (ISO), it comprises previously
standardized formats and is only a snippet of red tape away from being
SDO-backed.

You can read a lot of nitty gritty on the format itself explained by Barry
Pearson on his [DNG Specification page][dng].

[dng]: http://www.barrypearson.co.uk/articles/dng/specification.htm

## Why Would You Want to Use DNG?

There are three main reasons that are generally cited:

* Archivability (future-proof-ness, if you want)

* Interoperability (openness, we like to say)

* Efficiency (YMMV(Your Mileage May Vary), more on this later)

*Archivability* (which I'm pretty sure isn't even a word) means that fifty years
from now, when Canon owns the world and Nikon is completely extinct (_har har_),
flying cars are a reality, and everyone has an army of robotic servants, your
DNG files will still be supportable by manufacturers of hardware and software
alike, because no secrets about it have been kept from the public.

> If Nikon decides to not support my raw files one day, there's some 15 year old
> in his room that'll code up a raw conversion program in his sleep.
>
> --Matt Kloskowski

Does this claim hold water? I don't know, you can download free software right
now that can read the Photoshop version 3.0 format, which is already decades
old, so it seems to me that if the ability to parse a format is out there (even
if it was obtained semi-legally or with much effort by third-parties), it will
be difficult to lose it. Moreover, a format such as Canon DNG or Nikon NEF will
likely remain supported by anyone you care about, or, as Matt Kloskowski put it,
"...there's some 15 year old in his room that'll code up a raw conversion
program in his sleep." So I am not worried about losing access to my RAW image
data.

*Interoperability* means the ability for you to take the same file and use it in
many different places. Of course whether this is an advantage to you or not
depends on the places where you want to be able to use your RAW files. For me,
Lightroom is the only program on my entire computer that ever sees a RAW file. I
suppose if I round-trip through Photoshop, Lightroom is going to pass the CR2
through Camera Raw, but we're talking about two closely-integrated Adobe
applications there; whatever formats one supports, the other is sure
to. Photomatix is going to see TIFFs, on the web you'll see JPEGs, etc.

So why does interoperability matter? Adobe's point in creating DNG is that it
may matter in the future. If Great New Software X decides they can't support
your camera's RAW format, and if you've converted it to DNG already, well,
problem solved. Because Great New Software X will certainly support DNG given
that the format is completely open and drop-dead simple (not to mention free) to
implement, you have a much better chance of being able to drop your existing DNG
images into any new, shiny tool.

> I actually tried ZIP compression in prototype versions of DNG, but the
> compression ratio was much better using lossless JPEG.
>
> -- Thomas Knoll

Okay, what about *efficiency*? This is where things get kind of cool.  The Adobe
DNG format stores the actual pixel image data in what is called _Huffmann
lossless JPEG_ format. What that means is that DNG files can sometimes be as
much as 20% more efficient at storing image data on disk than a comparable RAW
format, thus DNG files may be as much as 20% smaller. Lossless JPEG is
completely pristine; there is no image-altering compression done, so the data is
totally preserved, albeit compacted. The Huffmann algorithm for this compression
happens to be more efficient than ZIP when there are more than 8 bits of data
per channel (RAW is 12 or 16), so the Huffmann algorithm was used.

But here comes the kicker... Canon's RAW (CR2) format already uses Huffmann
lossless JPEG for its internal image data storage. So if you shoot Canon RAW,
you will see no increase in data compression, since the data is stored in
exactly the same way already. If you shoot in Nikon RAW (NEF), you will
immediately see a 20% decrease in file size and no change in image quality.

For non-Canon shooters, that's probably the most compelling reason to convert to
DNG right now, which I should point out _Lightroom can do automatically for you
at import time_. You've seen the option, right?  There are a couple of ways to
convert to DNG in Lightroom, and there
are [three of them explained on TheLightroomLab.com][tll].

[tll]: http://thelightroomlab.com/2009/06/converting-digital-camera-raw-files-to-the-dng-format-using-adobe-photoshop-lightroom/

## Sidecars Aren't Just for Kids

![Photo by Rastaman3000](/wp-content/uploads/2010/01/697px-Vespa_sidecar-300x257.png "Vespa")

No, seriously, most motorcycle sidecars could definitely seat an
adult...

Joking aside, what we're talking about are metadata "sidecar" files,
typically named something like `IMG_0195.xmp` and so-called because they
are saved alongside your original RAW image files, like the sidecar on a
motorcycle. Sidecar files have been around since the invention of
metadata and metadata libraries. The XMP format for storing image
metadata in a sidecar file was developed by (guess who...) Adobe. XMP is
necessary because the metadata support within RAW file formats and other
imaging formats may comprise only a subset of what, for example,
Lightroom is able to save and search.

Certain formats such as PSD, TIFF, and JPEG have pretty flexible
metadata support in them already. DNG is no different. The "sidecar
bonus" of the DNG format is that when you're using DNG, you don't need
sidecars.

But who does, anyway? The fact is, Lightroom stores all of your image
metadata in its own catalog. This is done 1) to make it quickly
searchable and editable, and 2) to centralize it. If you want to write
metadata to disk for certain files (or the whole catalog), then
Lightroom will decide, based on the source format of each image, whether
to save it directly into the file or to create an XMP sidecar file.

The purpose of XMP is to give your image metadata a place to live when
the image file itself can't accommodate it. So why would you need this
ability? Two reasons. (Assuming your RAW files are in NEF, CR2, or
similar; non-DNG).

* If you share images with other people who use Lightroom and you want them to
  be able to see what you have done in the Develop module, as well as the IPTC
  tags, you will need to send them XMP sidecar files. This is preferable to
  sending your entire Lightroom catalog or creating a new one to house only the
  images you are sending.

* In the event of a catastrophic disaster where your Lightroom catalog backups
  are corrupted, you can restore 95% of your data using the source RAW image
  files and associated XMP sidecar files. What you would lose is _virtual
  copies_, your _history_, and any _collections_. All edits and other settings
  are stored in the XMP files.

There are some major caveats here, though.

* When you're sharing images, you can always _export them_ to DNG, which makes
  XMP unnecessary.

* In the event of a catastrophic disaster, you'll only have XMP files if you've
  previously selected batches of images within Lightroom and triggered the
  "Export Metadata to Files" function. Presumably you would carry out this
  procedure on images you have finished editing as part of your backup
  strategy. For the record, I do not do this.

## Conclusions

So where does this leave us as far as DNG goes? Should we all run back
to our computers right now and convert our whole libraries to DNG
format? Once again, here are the major advertised benefits of the DNG
format:

* Archival (future-proof)

* Interoperable (widely compatible)

* Efficient (storage-wise, at least)

* All-inclusive (obsoletes XMP sidecars)

It seems to me that the "archival" and "interoperable" characteristics
of the format are bonuses, and as a supporter of free and open
standards, I tip my hat to Adobe simply on principle. These
characteristics don't, however, increase the immediate convenience or
reliability of my workflow, nor do I think the archival nature of the
DNG format will have a measurable impact on my workflow in the coming
years.

Since I am a Canon shooter, my Canon RAW (CR2) files already compress
image data using the same _Huffmann_ lossless JPEG system that DNG
does, so I get no benefit there. If you use Nikon, et al., you may see
an immediate storage benefit from converting your library to DNG.

Perhaps the most compelling reason to convert your library to DNG, or to
start using DNG for your imports going forward, is the fact that DNG
files are capable of storing all Lightroom-specific metadata directly
within themselves, without the use of XMP sidecar files. If you are
diligent in writing metadata to the files when you are through editing
them, those files then fully encapsulate all the work that you've done,
in one place, suitable for backup.

Even in the event that you lost your Lightroom catalog, you could still
restore the final, edited versions of the images (which is where all of
your hard work goes, after all), as well as tags and other helpful
metadata. The only things you'd lose are virtual copies, history (of
limited long-term utility, anyway), and collections (which can be
rebuilt without nearly as much work as re-developing all your images).

To DNG or not to DNG? I think I will.
