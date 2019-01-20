---
layout: post
status: publish
published: true
title: Automated Workflow II
author_email: aaron@singleservingphoto.com
author_url: http://gallery.aaronbieber.com
wordpress_id: 104
wordpress_url: /articles/2007/04/19/automated-workflow-ii/
date: '2007-04-19 22:26:20 -0400'
date_gmt: '2007-04-20 02:26:20 -0400'
categories:
- Articles
tags:
- technology
- howto
- applescript
- guide
- programming
- software
- workflow
comments: []
---
In the [last chapter of my Automated Workflow
series](/articles/2007/04/15/automated-workflow-i/),
I showed you how to use some neat scripting tricks to apply watermarks
to your photos automatically. In this chapter, I'm going to talk about
naming and organizing photos and show you how to set up some scripts to
make things easier for you.

You have a bunch of pretty photos; shouldn't they have pretty
names?~~MORE~~

I always name my photographs. Even if the names are sometimes trite or
clichéd, I think that any photo that has worked its way into the gallery
deserves a name. When I put photos into [my
gallery](http://www.fisheyegallery.com), I like to name the files
themselves with the name of the photograph so that the URLs are pretty.
It makes more sense to see a URL like
@/Places/Chicago/MillenniumPark.jpg.html@ than something ugly like
@/plc/chg-il/chg-mp-01.jpg@, don't you think?

One thing I hate is to do things more than once. Isn't that why we have
computers? "So," I thought to myself, "if I'm going to enter the names
of the photos into the @Title@ field of their metadata anyway," which I
do, "shouldn't I be able to read that out somehow and name the file with
it?" Yes, yes I can. This is because I am a nerd. It is this power that
I will give you today. Nerd power.

## Getting the Programs

First, you're going to need a working installation of
[MacPorts](http://www.macports.org). In my [previous
article](/articles/2007/04/15/automated-workflow-i/)
I explained how to get that working, so go over that part again if you
need to. I will assume you have it installed, even if you didn't install
the ports I talked about last time.

Now install a program called @exiv2@, which is a terminal utility for
reading Exif and other data out of (primarily) JPEG files. Installing it
should be as easy as opening up your terminal program of choice and
typing:

` airborne@Auriga ~ $ sudo port install exiv2`{lang="text"}

Remember, you're only typing the part after the dollar sign. You will
probably be prompted for your password and then it'll run off and
download things and install them for you. Once it's done, make sure it
worked by running the program:

` airborne@Auriga ~ $ exiv2 exiv2: An action must be specified exiv2: At least one file is required Usage: exiv2 [ options ] [ action ] file ...`{lang="text"}

Manipulate the Exif metadata of images.

It should look more or less like that. If you get a @-bash: exiv2:
command not found@ error, that's not good, so you should look back at
what MacPorts told you during the installation to find out what went
wrong. Now that you have @exiv2@ installed, you can use it to read
information out of files. Here is what the basic output of @exiv2@ looks
like if you don't specify any extra options:

` airborne@Auriga ~ $ exiv2 24Jun06-03.jpg Filename        : 24Jun06-03.jpg Filesize        : 147491 Bytes Camera make     : Canon Camera model    : Canon EOS 10D Image timestamp : 2006:06:24 17:45:27 Image number    : Exposure time   : 1/90 s Aperture        : F11 Exposure bias   : 0 Flash           : No Flash bias      : Focal length    : 44.0 mm Subject distance: ISO speed       : 200 Exposure mode   : Metering mode   : Matrix Macro mode      : Image quality   : Exif Resolution : White balance   : Thumbnail       : None Copyright       : Copyright (c) 2006 Aaron Bieber Exif comment    :`{lang="text"}

But wait, there's no image name in there, only the filename! By default,
@exiv2@ only prints out the Exif data, not any of the IPTC data, which
is where things like the image's creator, URL, title, etc., are stored.
We can tell @exiv2@ to print out IPTC data by using the @-pi@ switch. By
the way, you can find out what else it can do by asking it for help with
@exiv2 --help@.

` airborne@Auriga ~ $ exiv2 -pi 24Jun06-03.jpg Iptc.Application2.RecordVersion              Short       1  2 Iptc.Application2.ObjectName                 String     17  Onward, Upward II Iptc.Application2.Keywords                   String     13  portrait ilva Iptc.Application2.Byline                     String     12  Aaron Bieber Iptc.Application2.Copyright                  String     31  Copyright (c) 2006 Aaron Bieber`{lang="text"}

## Shelling out the Name!

You can see that this JPEG has been given a title (in the IPTC spec.
they call it ObjectName), a couple of keywords, a byline (the creator's
name, usually), and a copyright notice. What we want is just the value
of ObjectName. We can get this with a piece of shell scripting like so:

` exiv2 -pi "a-file-with-metadata.jpg" | grep ObjectName | cut -c 61- | tr -cd "[:alpha:]"`{lang="bash"}

I'm not going to explain how this works; the fun of @bash@ is looking up
each command and figuring out how it all comes together. If you want to
figure it out, I'm confident that you will. If not, that's okay, you can
still use it! Suffice it to say, that line should output _only_ the
title of the image, or nothing if there isn't one. We need to save that
into a little script so that it can be given a filename to work on and
so it can check to make sure everything works the way it's supposed to.
To that end, here is the script:

` #!/bin/sh`{lang="bash"}

if \[\[ ! -z "\$1" && -e "\$1" \]\]; then
 EXIV="/opt/local/bin/exiv2"
 TITLE=\`\$EXIV -pi "\${1}" 2&gt;/dev/null | grep ObjectName | cut -c
61- | tr -cd "\[:alpha:\]"\`;
 if \[ -z "\$TITLE" \]; then
 echo "There is no title in the metadata."
 exit 1
 else
 \`mv "\$1" "\$TITLE.jpg"\`;
 exit 0
 fi
 else
 echo "You must supply a filename and the file must exist."
 exit 0
 fi

*Note:* You may have to change the path to @exiv2@ in the part that
starts @EXIV=@ if MacPorts installed it in a different place than where
it is on my system. In all likelihood it's in the same place, but you
can check by running @which exiv2@. Use the path printed by that command
in your script.

This script takes the filename of your photograph as an argument and
renames the file with that name. It also removes any non-alphanumeric
characters from the title to make sure the filename will be valid. If
you wanted to change spaces into hyphens instead of removing them or
something else along those lines, you'd want to examine and alter the
@tr@ portion of the long command at the beginning.

Save that script into a file and make sure it's executable by running
@chmod u+x yourscriptname@, and you're done!

## Making a Droplet

Well, almost. Wouldn't it be handy to be able to drag and drop a bunch
of photos onto an icon and have this thing rename them all at once? You
bet it would. We can easily make an AppleScript droplet that will do
that, just like I showed you in the previous chapter! Here's the code:

` on open theObjects     repeat with theObject in theObjects         do shell script "~/bin/namewithtitles " & "'" & ¬         (POSIX path of theObject as string) & "'"     end repeat end open`{lang="applescript"}

Hit Save As and make sure to select "application" as the type and also
make sure that the "Startup Screen" option is unchecked. You really
don't want that one.

If all has gone according to plan, you should be able to drag photos
onto the droplet and they should be renamed for you! Of course, they
must have title information in the IPTC header; Lightroom calls the
field Title and will export that data with your images automatically.

If you felt the urge, you could integrate these AppleScript commands
into the post-processing script for Lightroom that I showed you how to
set up in the previous chapter. I will leave that as a challenge for the
adventurous reader.

Until next time, fellow photo-nerds.
