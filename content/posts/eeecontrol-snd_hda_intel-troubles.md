---
title: "Eee-Control and snd_hda_intel Troubles"
date: 2009-02-03T09:03:19-04:00
draft: false
tags: ["arcihve","linux"]
---

Ever since I bought my Eee PC 901 I've been trying to find a way to manually control the fan; all of the tools that worked on my Celeron-powered 900 don't work at all on my Atom-powered 901.

After a bit of Googling I found a program called Eee-Control, which claimed that it could control the Atom's clock and fan speed. After trying and disliking the software I removed it from my system, but then I noticed a weird problem with my speakers -- they kept popping every time I initialized the sound! So after recompiling the drivers and my kernel (and completely borking 2.6.28.2) I found that the problem was a silly script that EeeControl put in /etc/modprobe.d/ setting snd_hda_intel's power_save parameter to 1.

According to modinfo, parm: power_save:Automatic power-saving timeout (in second, 0 = disable). (int), so the script was turning off my speakers after one second of inactivity. I can only assume that the upstream author thought it was a boolean argument.

Anyway, I contacted upstream and hope to have it fixed ... Even a value of 30 would be better.
