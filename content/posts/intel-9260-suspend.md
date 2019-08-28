---
title: "Fixing Suspend Issues Caused By Intel 9260 Bluetooth"
date: 2019-08-26T11:15:13-04:00
draft: false
tags: ["linux","intel","suspend"]
---
Last week I received my Lenovo ThinkPad T495s, a new T-series line of ThinkPads from Lenovo that uses AMD processors instead of Intel. Everything so far is working perfectly (after getting a patched Systemd) except suspend.

It seems to be caused by the Intel 9260's bluetooth device waking the machine up after it enters hibernation. If you own a device with an Intel 9260 you can verify yourself that the wakeup of this device is set to 'enabled' by doing `cat /sys/bus/usb/devices/*/power/wakeup`.

You can temporarily fix this by changing the value to disabled by running `echo disabled > /sys/bus/usb/devices/<DEVICE-HERE>/power/wakeup` (obviously switch out <DEVICE-HERE> with your device, mine was 4-1 but this could be different based on your machine's config). After a sleep resume cycle it will re-enable itself, though.

You can make this semi-permanent using udev by adding this rule to a new file in `/etc/udev/rules.d/`:

```
# Disable wakeup on Intel 9260 bluetooth to allow suspend/resume
SUBSYSTEM=="usb" ATTR{idVendor}=="8087", ATTR{idProduct}=="0025" \
        ATTR{power/wakeup}="disabled"
```

I've put the file up [on my Github](https://github.com/Pobega/dotfiles/blob/65798e02182ed86f4901365af6c68c5137fcdfa3/t495s/80-intel9260-btusb.rules) for anyone who wants to just download it.

~~Unfortunately it still seems to reset itself after a suspend cycle, I'm trying to figure out if there's some way to have a udev rule trigger after suspend. In the meantime you could use a tool like **tlp** to keep the bluetooth off if you aren't using it.~~ (see **edit** for follow-up)

<br />
**Edit** *8/27/2019*: To get the above rule to trigger after a suspend/resume cycle you can put the following script in `/usr/lib/systemd/system-sleep/bluetooth.sh`

```bash
#!/bin/sh

if [ "${1}" == "post" ]; then
  udevadm trigger --subsystem-match="usb"
fi
```

<br />
**Edit 2** *8/28/2019*: There is an upstream bug against Fedora 30 at https://bugzilla.redhat.com/show_bug.cgi?id=1731915
