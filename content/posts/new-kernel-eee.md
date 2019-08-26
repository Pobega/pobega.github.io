---
title: "New Kernel (2.6.27.9) Upgrade on my Eee"
date: 2008-12-31T16:32:14-04:00
draft: false
tags: ["archive","linux", "hardware"]
---

So I upgraded my kernel from my very outdated 2.6.25-\* kernel to 2.6.27.9, and I have to say I'm impressed.

I ditched my old MadWiFi drivers (contrib) for fully free and open source ath5k modules (built right into the kernel!), as well as having my ethernet built in (non-modular) and an improvement in boot time (under 2 seconds, but still)

I'll be posting up a .deb and .config when I get around to it, I need to fix a little bit more (the webcam doesn't work out of the box, I'm probably going to need to compile that into the kernel too).
