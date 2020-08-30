---
title: "Firefox Video Decoding"
date: 2020-08-30T16:58:29-04:00
draft: false
tags: ["linux","flatpak","firefox","ffmpeg"]
---
Hardware video decoding is now available in Firefox (version 80 at the time of writing.) While there seems to be some experimental X11 support in testing (via the `MOZ_X11_EGL=1` env var) it has been working (mostly) consistently for me in Wayland via the official Flatpak on Flathub.

The settings you'll need in `about:config` are:
```
gfx.webrender.enabled=true
gfx.webrender.all=true
media.ffmpeg.vaapi.enabled=true
media.ffmpeg.dmabuf-textures.enabled=true
```

Optionally if you'd like to use system ffmpeg for VP8/VP9 video decoding as well:
```
media.ffvpx.enabled=false
```
Flathub Firefox users should install `org.freedesktop.Platform.ffmpeg-full` for system ffmpeg. The Fedora Firefox Flatpak currently doesn't support Flatpak'd ffmpeg.

There are some issues on my system where occassionally Twitch videos will require a full page refresh but it's infrequent enough to not be a huge issue. There's an [upstream bug (bugzilla.mozilla.org)](https://bugzilla.mozilla.org/show_bug.cgi?id=1655794) for an similar issue on my hardware so I believe what I'm seeing is just related to AMD Ryzen mobile APUs.

Sources:
- https://mastransky.wordpress.com/2020/06/03/firefox-on-fedora-finally-gets-va-api-on-wayland/
- https://bugzilla.mozilla.org/show_bug.cgi?id=1619523#c57
- https://bugzilla.mozilla.org/show_bug.cgi?id=1656436#c22
