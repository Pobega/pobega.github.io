---
title: "Lenovo Thinkpad T495s Review"
date: 2019-08-26T11:37:10-04:00
draft: true
tags: ["hardware","review","linux","amd"]
---
Earlier in 2019 [Lenovo announced](https://www.theverge.com/circuitbreaker/2017/9/7/16267428/lenovo-a275-a475-thinkpad-amd-pro-processors) that they were adding new ThinkPads with AMD Pro processors to their lineup. As someone who's spent the last few years trying to migrate away from Intel this appealed to me. After waiting months Lenovo finally dropped three new laptops; The ThinkPad [T495](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-t-series/T495/p/22TP2TTT495), [T495s](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-t-series/T495s/p/22TP2TT495S) and [X395](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-x/X395/p/22TP2TXX395).

For the unaware, the AMD Pro CPUs ship with Vega M APUs (Vega 6, 8 and 10 respectively depending on the CPU) which are integrated cards that pack a little more 'oomph' than Intel's offerings.

I purchased the laptop to run Linux (specifically Fedora Silverblue) for some dev work and light gaming, so this review will be written with that use case in mind.

## Specs

My **T495s** came equipped with


* AMD Ryzen™ 5 PRO 3500U Processor (2.10GHz, up to 3.70GHz Max Boost, 4 Cores, 4MB Cache)
* 14" FHD (1920 x 1080) 400 nits, IPS, Low Power, anti-glare
* 16 GB DDR4 2400 MHz
* 256GB NVMe SSD
* Integrated AMD Radeon™ Vega 8
* WLAN: Intel® 9260 802.11 AC (2 x 2)

## Design

Lighter
Thinner

Cover Ports


* 3.5mm headphone
* USB-C, no Thunderbolt
* 2x USB-3.1

## Display

* Bright
* Low power consumption
* Viewing angles are perfect

## Keyboard and touchpad
Keyboard:


* Dropped keys?
* Buttons feel heavy compared to X1C

Touchpad:


* It's not glass.
* Very good but feels a bit sticky at times.
* Trackpoint is ol' faithful.

## Performance
* Throttles on battery pretty had
* APU throttles more than CPU
* Now using TLP so performance is worse on battery, but even with `powersave` the performance seems pretty good.
* Using BFQ scheduler (which is [now default on ChromeOS](https://www.phoronix.com/scan.php?page=news_item&px=Chromebooks-BFQ-Default-IO) and [coming soon to Fedora](https://www.phoronix.com/scan.php?page=news_item&px=Fedora-Switching-To-BFQ) the application lag on battery with the `powersave` governor is mostly negated.

## Battery
* 3-5 hours with TLP enabled
* Depends heavily on load
* Web browsing uses a lot of battery

## Linux
* amdgpu works out of the box with RADV for Vulkan
* [systemd requires a patch for rdrand](https://github.com/systemd/systemd/issues/11810) which isn't in Fedora 30 meaning I cannot install Silverblue. Fedora Desktop ReSpin (with patched systemd and updated kernel) works fine.
* Kernel 5.1 required. Previous kernels required boot workarounds.
* Suspend/resume: the bluetooth blocks proper suspending

## Gaming
