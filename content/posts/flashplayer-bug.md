---
title: "Flashplayer 10 - Horrible Bug"
date: 2008-12-14T19:52:15-04:00
draft: false
tags: ["arcihve","bug","adobeflash"]
---

So, I installed the Debian *flashplayer-mozilla* package the other day just to try out a game (**Dofus**, to be exact) while simultaneously voice chatting with a friend, when crash completely segfaulted and crashed my laptop. After rebooting and calling my friend back he complained about the quality of my voice -- Apparently flash player did something to my microphone and now it's borked..

My theory for how this happened is that I was using my microphone while flash was trying to access it (since Adobe's flash player has mic and webcam access), Adobe flash panicked, and crashed (while still trying to access the mic) which caused a system crash and microphone hardware failure.

Thankfully, ASUSTeK offered to fix my unit for no cost. But be warned before installing flash player! Instead of flash player, why not try an alternative?
