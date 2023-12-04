---
title: "2023 Update: Firefox & Hardware Video Decoding on Wayland"
date: 2023-12-03T16:58:29-04:00
draft: false
tags: ["linux","flatpak","firefox","ffmpeg"]
---
Things have gotten [a bit hairy](https://lwn.net/Articles/910978/) with the H.264 codecs as of late. They've been removed from most distro's Mesa implementation which has caused a headache for AMD users (such as myself) since AMD offloads video decoding to Mesa.

Thankfully you can still get hardware video decoding using Flathub's Firefox Flatpak, ffmpeg and OpenH.264.  I've deciding to document the process here since this whole thing was kind of a headache to figure out.

First you'll need to install the following packages:
```
org.freedesktop.Platform.ffmpeg-full
org.freedesktop.Platform.openh264
```
The versions of these are a bit unclear, but you could look at the manifest for your Firefox install (`.local/share/flatpak/app/org.mozilla.firefox/current/active/metadata` or `/var/lib/flatpak/app/org.mozilla.firefox/current/active/metadata` depending on whether it's a system or user install) to figure out what package versions you need.

As usual you'll need to enable VA-API in Firefox's `about:config`:
```
media.ffmpeg.vaapi.enabled=true
```

And things should just work smoothly. I recommend also grabbing [enhanced-h264ify](https://addons.mozilla.org/en-US/firefox/addon/enhanced-h264ify/) to control which codecs websites can show you.

If you want to see the codecs your machine is capable of decoding you can install and run `org.freedesktop.Platform.VaInfo`:

```
Trying display: wayland
libva info: VA-API version 1.19.0
libva info: Trying to open /usr/lib/x86_64-linux-gnu/dri/radeonsi_drv_video.so
libva info: Trying to open /usr/lib/x86_64-linux-gnu/dri/intel-vaapi-driver/radeonsi_drv_video.so
libva info: Trying to open /usr/lib/x86_64-linux-gnu/GL/lib/dri/radeonsi_drv_video.so
libva info: Found init function __vaDriverInit_1_19
libva info: va_openDriver() returns 0
vainfo: VA-API version: 1.19 (libva 2.20.0)
vainfo: Driver version: Mesa Gallium driver 23.2.1 for AMD Radeon Vega 8 Graphics (raven, LLVM 16.0.6, DRM 3.54, 6.6.2-201.fc39.x86_64)
vainfo: Supported profile and entrypoints
      VAProfileMPEG2Simple            :	VAEntrypointVLD
      VAProfileMPEG2Main              :	VAEntrypointVLD
      VAProfileVC1Simple              :	VAEntrypointVLD
      VAProfileVC1Main                :	VAEntrypointVLD
      VAProfileVC1Advanced            :	VAEntrypointVLD
      VAProfileH264ConstrainedBaseline:	VAEntrypointVLD
      VAProfileH264ConstrainedBaseline:	VAEntrypointEncSlice
      VAProfileH264Main               :	VAEntrypointVLD
      VAProfileH264Main               :	VAEntrypointEncSlice
      VAProfileH264High               :	VAEntrypointVLD
      VAProfileH264High               :	VAEntrypointEncSlice
      VAProfileHEVCMain               :	VAEntrypointVLD
      VAProfileHEVCMain               :	VAEntrypointEncSlice
      VAProfileHEVCMain10             :	VAEntrypointVLD
      VAProfileJPEGBaseline           :	VAEntrypointVLD
      VAProfileVP9Profile0            :	VAEntrypointVLD
      VAProfileVP9Profile2            :	VAEntrypointVLD
      VAProfileNone                   :	VAEntrypointVideoProc
```

`VAEntrypointVLD` means it's capable of decoding that codec-type. Use this to gauge how to configure `enhanced-h264ify`.

Good luck and enjoy!

Sources:
- https://lwn.net/Articles/910978/
