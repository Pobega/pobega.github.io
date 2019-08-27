---
title: "Lenovo Thinkpad T495s Review"
date: 2019-08-26T11:37:10-04:00
draft: false
tags: ["hardware","review","linux","amd"]
---

<p align="center">
  <i>
    Lenovo's first T-series AMD ThinkPads prove that they can stand with the big boys
  </i>
</p>
<br />

Earlier in 2019 [Lenovo announced](https://www.theverge.com/circuitbreaker/2017/9/7/16267428/lenovo-a275-a475-thinkpad-amd-pro-processors) that they were adding new ThinkPads with AMD Pro processors to their lineup.
As someone who's spent the last few years trying to migrate away from Intel this appealed to me.
After waiting months Lenovo finally dropped three new laptops; The ThinkPad [T495](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-t-series/T495/p/22TP2TTT495), [T495s](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-t-series/T495s/p/22TP2TT495S) and [X395](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-x/X395/p/22TP2TXX395).


For the unaware, the AMD Pro CPUs ship with Vega M APUs (Vega 6, 8 and 10 respectively depending on the CPU) which are integrated cards that pack a little more 'oomph' than Intel's offerings.


I purchased the laptop to run Linux (specifically Fedora Silverblue) for some dev work and light gaming, so this review will be written with that use case in mind.

<br />
# Specs <i class="far fa-check-circle"></i>


My **T495s** came equipped with


* AMD Ryzen™ 5 PRO 3500U Processor (2.10GHz, up to 3.70GHz Max Boost, 4 Cores, 4MB Cache)
* 14" FHD (1920 x 1080) 400 nits, IPS, Low Power, anti-glare
* 16 GB DDR4 2400 MHz (2x 8GB dual channel)
* 256GB NVMe SSD
* Integrated AMD Radeon™ Vega 8
* WLAN: Intel® 9260 802.11 AC (2 x 2)

(specs taken from [Lenovo's T495s product page](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-t-series/T495s/p/22TP2TT495S))


<br />
# Design <i class="far fa-check-circle"></i>


Lenovo's 2019 ThinkPad redesign trades ports and upgradability for thinner and lighter bodies.
While this may annoy some users, as a cloud-focused developer the tradeoff is OK by me.


### Size & Weight <i class="far fa-check-circle"></i>


The ThinkPad T495s shares it's chassis with the T490s, coming in at **16.1 mm** thick and weighing **2.81 lbs**.
This tiny design manages to pack in a **57 Wh battery** which recharges in about an hour with the included 65W AC adapter.


Compared to last year's T480s Lenovo has managed to shave off *2.3 mm* and *.09 lbs* which is pretty respectable.


In day-to-day use I barely notice the machine in my backpack. Coming from the X1 Carbon Gen 3 (*19.65 mm* / *2.99 lbs*) this is actually a noticeable improvement.


### Ports <i class="far fa-question-circle"></i>


As stated earlier the new thinness and weight does come with some tradeoffs, namely ports.
The **RJ-45** jack on the T480s is **gone** in favor of an adapter port on the left side of the machine, as is the **SDHC card reader**.


On the USB side of things it has two **USB-A 3.1** ports (one powered), a **USB-C** charger port and a spare **USB-C** port for connecting devices such as headphones or docks. I have tried to use the USB-C charger port to connect devices when on battery but it doesn't seem to be wired for data transfer, only charging.


Curiously, Lenovo decided to leave out *Thunderbolt* on the T495s (even though it is on the T490s,) which means if you are trying to use an eGPU or Thunderbolt dock you may be out of luck with this year's AMD ThinkPad offerings.


For display connectivity the T495s does still manage to pack in a **full-size HDMI 2.0** port, which on top of the aforementioned **USB-C** port can be used to power multiple external displays.


The T495s still sports the old faithful **3.5mm combo headphone/mic jack**, which works exactly as you'd expect.


The loss of the *RJ-45* and *SDHC* are definitely overall cons to the new design, but the tradeoff for slimness and lightness may just be worth it overall.
While I'll need to invest in an external SDHC reader to get pictures off my camera I don't need the SDHC card every moment of every day, and I've personally never found the performance of SD to be good enough to use as a dedicated storage device.


<br />
# Display <i class="far fa-check-circle"></i>


The **FHD 400-nit Low Power IPS** display offering on the T495s is a really fantastic panel.
The display is bright and colorful. 
* Bright
* Low power consumption
* Viewing angles are perfect


<br />
# Keyboard, touchpad and trackpoint <i class="far fa-check-circle"></i>
### Keyboard <i class="far fa-question-circle"></i>
* Layout feels great, smile shaped keys good as ever.
* Buttons feel heavy compared to X1C
* Dropped keys? Could be learning curve.
* Backlight works nicely.
* Caps lock finally has a caps lock light. Big nitpick with X1C G3


### Touchpad <i class="far fa-check-circle"></i>
* It's not glass.
* Luxuriously large, though not Macbook large.
* Very good but can feel a bit sticky at times due to the materials.
* Well supported by libinput.


### Trackpoint <i class="far fa-check-circle"></i>
* Trackpoint is ol' faithful.
* Very clicky trackpoint buttons
* Haven't experienced trackpoint drift yet.


<br />
# Performance <i class="far fa-question-circle"></i>
* Throttles on battery pretty had
* APU throttles more than CPU
* Now using TLP so performance is worse on battery, but even with `powersave` the performance seems pretty good.
* Using BFQ scheduler (which is [now default on ChromeOS](https://www.phoronix.com/scan.php?page=news_item&px=Chromebooks-BFQ-Default-IO) and [coming soon to Fedora](https://www.phoronix.com/scan.php?page=news_item&px=Fedora-Switching-To-BFQ) the application lag on battery with the `powersave` governor is mostly negated.
* NVMe SSD flies (**NOTE: Include benchmarks**)

`$ time dd bs=16k count=102400 oflag=direct if=/dev/zero of=test_data`

```
102400+0 records in
102400+0 records out
1677721600 bytes (1.7 GB, 1.6 GiB) copied, 6.54317 s, 256 MB/s

real    0m6.885s
user    0m0.053s
sys     0m4.536s
```


`# hdparm -t /dev/nvme0n1`

```
/dev/nvme0n1:
 Timing buffered disk reads: 3472 MB in  3.00 seconds = 1156.78 MB/sec
```


[fs_mark](https://github.com/josefbacik/fs_mark)

`$ fs_mark -d test  -s 10240 -n 1000 -v`

```
Count       Size         Files/sec        App Overhead
1000        10240        901.6            21158

CREAT (Min/Avg/Max)        WRITE (Min/Avg/Max)        FSYNC (Min/Avg/Max)
54      90     265         20      30      95         844     961     6606

SYNC (Min/Avg/Max)        CLOSE (Min/Avg/Max)       UNLINK (Min/Avg/Max)
0       0        0        2        5       32       10       16      133
```

* Dual channel RAM (2x 8GB) works well

[STREAM](https://github.com/jeffhammond/STREAM)

`$ ./stream_c.exe`

```
Function    Best Rate MB/s  Avg time     Min time     Max time
Copy:           11253.3     0.015865     0.014218     0.018171
Scale:          11174.8     0.015669     0.014318     0.018882
Add:            13363.0     0.018631     0.017960     0.020059
Triad:          13321.6     0.019757     0.018016     0.022583
```

* Intel 9260 works well compared to 7260 in X1CG3. I can consistently get 5GHz across my apartment.

<br />
# Linux <i class="far fa-check-circle"></i>

* amdgpu works out of the box with RADV for Vulkan
* [systemd requires a patch for rdrand](https://github.com/systemd/systemd/issues/11810) which isn't in Fedora 30 meaning I cannot install Silverblue. Fedora Desktop ReSpin (with patched systemd and updated kernel) works fine.
* Kernel 5.1 required. Previous kernels required boot workarounds.
* Suspend/resume: the bluetooth blocks proper suspending

<br />
# Battery <i class="far fa-times-circle"></i>


* 3-5 hours with TLP enabled
* Depends heavily on load
* Idle draw is pretty high, with just Firefox open playing music and a terminal I get anywhere between 9.4W and 11.5W of power draw.
* Web browsing uses a lot of battery
* Overall


<br />
# Gaming <i class="far fa-check-circle"></i>

* Works well for light gaming. Have been playing DotA Underlords, Hollow Knight, Oxenfree
* Vulkan works well meaning Proton works well. Get 300% the framerate I got on Intel in Fallout: New Vegas.
* Performance in higher end games like DotA2 and Counter Strike still below what I expect, but playable.
* [Upcoming changes to Mesa](https://www.phoronix.com/scan.php?page=news_item&px=Mesa-Radeon-Boost-No-vRAM-Type) in 19.3 may improve the APU's performance by 30%
* Insert some basic Vulkan benchmarks.

`$ glmark2`
```
glmark2 Score: 3763
```

Ungine Heaven Benchmark:

```
Basic Preset
FPS: 35.4
Score: 892
Min FPS: 10.6
Max FPS: 54.3
```

```
Ultra Preset
FPS: 9.9
Score: 249
Min FPS: 4.9
Max FPS: 18.7
```

