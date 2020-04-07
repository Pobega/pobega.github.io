---
title: "Firefox Flatpak hits Flathub stable"
date: 2020-04-07T14:31:04-04:00
draft: false
tags: ["linux","silverblue","flatpak"]
---
Distro wars time: I'm a [Fedora Silverblue](https://silverblue.fedoraproject.org) user. I use it for both the ease of administration as well as the security benefits a completely containerized workflow provides.

One common issue folks trying to make the switch run into is packages being wholly unavailable - this can be resolved in three ways.

1. [Fedora Toolbox](https://docs.fedoraproject.org/en-US/fedora-silverblue/toolbox/) to create a Fedora container and `dnf install` tools.
2. [Flatpak](https://flatpak.org/) to install graphical tools to be used on the desktop-side of the OS.
3. [rpm-ostree layering](https://rpm-ostree.readthedocs.io/en/latest/) is the easiest method since it allows you to install from the Fedora repositories, but it's a pain to maintain and defeats the purpose of using Silverblue in the first place.

Of course each of these options comes with their issues. Firstly for _Toolbox_ it is hard to get graphical applications to work as expected since piping _Pulseaudio_ into a container is a lot of extra work. As for Flatpak you're really at the whim of whether or not the package exists on Flathub.

Previously if you wanted Firefox with `ffmpeg-libs` you had to layer `ffmpeg-libs` from the [rpmfusion repositories](https://rpmfusion.org/). This worked but (not to repeat) is anti-Silverblue in nature.

Thankfully as of [6 hours ago](https://bugzilla.mozilla.org/show_bug.cgi?id=1441922#c62) the [Firefox Flatpak has been pushed to Flathub stable](https://flathub.org/apps/details/org.mozilla.firefox)(Flathub link). To install,

```
flatpak install flathub org.mozilla.firefox
```

Unfortunately it currently defaults to using X11, but this can be overridden by changing the Flatpak args:

```
$ flatpak override --user --env=GDK_BACKEND=wayland org.mozilla.firefox
$ flatpak override --user --socket=wayland org.mozilla.firefox
```
