# Single-Serving Photo #

This is the content of my (in)famous blog, Single-Serving Photo, which I
authored for six years as I learned the craft of photography. It began as a
challenge to myself, to create and post photos with some frequency (at least
weekly), and grew into a powerful editorial and instructional outlet.

The version here has been shoddily converted from its original WordPress form
into a Jekyll site, which I will likely maintain through Octopress.

See my actual photographs on https://gallery.aaronbieber.com.

## Setting up

To get this going, you need bundler (`gem install bundler`).

First, `bundle install --path vendor/bundle` from the root of the project to
install all of this project's required gems into the local bundle directory
(which doesn't exist in version control, but bundler will create it).

Note that `ffi` will not build properly if the path to this project _has spaces
in it_ because it is a dumb piece of garbage. So make sure to clone this into a
path without any spaces in it.

With any luck, that is all you need to do.

`bundle exec jekyll serve` will build the site and start up the local
development server. Ta daa.

## What are you doing?

Please don't go and host my blog. It's my blog.

Why is this here? Because I believe in transparency, and maybe this will help
you start up your own blog or see how I solved certain problems. Don't abuse my
generosity.
