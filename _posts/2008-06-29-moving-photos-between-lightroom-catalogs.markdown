---
layout: post
status: publish
published: true
title: Moving Photos between Lightroom Catalogs
author_email: aaron@singleservingphoto.com
author_url: http://gallery.aaronbieber.com
wordpress_id: 189
wordpress_url: /articles/2008/06/29/moving-photos-between-lightroom-catalogs/
date: '2008-06-29 14:34:14 -0400'
date_gmt: '2008-06-29 18:34:14 -0400'
categories:
- Articles
tags:
- tips
- guide
- lightroom
- travel
comments:
- id: 5432
  author: Sasha
  author_email: news@keentype.com
  author_url: http://sashagitin.com
  date: '2012-03-20 13:43:02 -0400'
  date_gmt: '2012-03-20 17:43:02 -0400'
  content: Thanks! Really!!!, I know you wrote it a while ago. But I just found this
    as I was goggling. Hit the spot.
---
!right:/articles/Lightroom.jpg!

I've read [at least
one](http://www.lightroomkillertips.com/2008/friday-video-moving-between-laptop-and-desktop/)
account of how to move photos from one Lightroom catalog to another,
which is pretty common if you travel with a laptop and make edits in the
field (as I do). It's a tremendous help to be able to spend hours on the
flight home organizing and even editing images, but all of that work
would be for naught if there wasn't a nice, easy way to move those
images and their corresponding metadata onto your primary computer.

Fortunately, there is! I will tell you how! ~~MORE~~

Prerequisites (and helpful tips):

* You have Lightroom installed on your laptop, which of course it's the
same version that you have on your primary computer.
 * You've created a new catalog on your laptop for the trip that you
went on, or the shoot that you did. Even though I only have one main
catalog on my desktop, I create a new catalog on my laptop for every
shoot.
 * You have a home network, either wireless or wired. It seems like
most people do these days, but it's important for this method that you
are one of those people.
 * You understand the basics of file sharing between two Mac
computers.
 * It helps a lot if you save your Lightroom catalogs on your laptop in
your "Pictures" folder, or anywhere within your "Home" folder.

Okay, you have all of those things. Now what?

### Step 1: Get connected

Make sure your laptop is turned on and connected to your home network.
You'll need to be sure that File Sharing is enabled on your laptop. You
can enable it within System Preferences in the Sharing panel. Tick the
check box next to "File Sharing."

From your desktop, use the Connect to Server dialog to connect to your
laptop. From the Finder, click the Go menu and select "Connect to
Server..." Enter the address shown in your *laptop's* Sharing panel.
It should look something like @afp://192.168.0.3@, though the numeric
address will vary. If you know your account's short name on your laptop,
you can enter that at the end, like this:
@afp://192.168.0.3/john.smith@.

If you used your short name on the address, it should prompt you for
your password at this point. If not, it will probably present you with a
dialog where you can choose which shared folder to open. You want the
one corresponding with your short name (which is your home folder on
your laptop). If you need help setting up file sharing between your
Macs, you may like to read [Mac OS X: About File
Sharing](http://support.apple.com/kb/HT1549) on Apple's support website.

### Step 2: Get some photos!

At this point, you should be able to browse to your laptop's Pictures
folder from your desktop in the Finder. The name of your laptop should
appear under the "SHARED" section in the left navigation panel of Finder
windows. Time to open Lightroom!

From within Lightroom on your desktop, open the File menu and choose
"Import from Catalog..." A dialog will open where you can browse to the
Lightroom catalog file you want to import from. At this stage, find your
laptop in the left panel, open up your shared home folder, and open the
Lightroom catalog file itself. For me, it's located in the Lightroom
folder in my Pictures folder.

When you open that file, a somewhat trimmed down Lightroom Import dialog
will open. The only thing you probably want to change in this dialog is
the location where the files will be saved. You definitely want to
choose "copy files to a new location and import" so that Lightroom will
copy the physical photographs from your laptop onto your desktop.

Click Import and wait for a while... Voila! Your photographs have been
copied onto your desktop and imported into Lightroom with all of your
flags, tags, labels, and edits preserved!
