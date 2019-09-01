---
title: "Lenovo Thinkpad T495s Review"
date: 2019-08-30T11:37:10-04:00
draft: true
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


For the unaware, the AMD Pro CPUs ship with mobile Vega APUs (Vega 8 or 10 depending on the CPU configuration) which are integrated cards that pack a little more 'oomph' than Intel's offerings.


I purchased the laptop to run Linux (specifically Fedora Silverblue) for some dev work and light gaming, so this review will be written with that use case in mind.
Also note that I am transitioning off of an X1 Carbon Gen3 (*i5-5200u*) so my review will be talking in comparison to that hardware pretty often.

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

Lenovo's official T495s platform specification PDF is available [here](https://psref.lenovo.com/syspool/Sys/PDF/ThinkPad/ThinkPad%20T495s/ThinkPad_T495s_Platform_Specifications.pdf)


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


The **FHD 400-nit Low Power IPS** display offered on the T495s is a really fantastic panel.
The display is **bright**, **vibrant** and the **viewing angles are wide**.
This specific panel is the **low power** display, although currently I can't get hard information on the power draw as *powertop* is reporting it as 0 mW usage.


My specific machine has the *N140HCG-GQ2* made by *Innolux*, which apparently is the [winner of the IPS lottery](https://www.notebookcheck.net/Lenovo-s-Panel-Lottery-continues-with-3-different-14-inch-LowPower-displays.426538.0.html) for this line of ThinkPads.
Speaking for the Innolux panel I can say that the ghosting and input delay reported by other users with the FHD low-power IPS panel aren't an issue.
I've done some very basic measurements (playing fighting games) and haven't noticed any appreciable input delay, so for day-to-day use the Innolux panel is perfect.


<br />
# Keyboard, touchpad and trackpoint <i class="far fa-check-circle"></i>
### Keyboard <i class="far fa-question-circle"></i>

The standard 14" ThinkPad keyboard is as **great as ever**.
It uses a **standard ThinkPad layout** with smile-shaped keycaps, though the **capslock key light** is a much appreciated addition compared to previous iterations.

Compared to my X1 Carbon Gen3, the **keys feel a bit heavy**.
It could just be me but sometimes I feel like the heaviness causes me to miss keypresses.
I think over time my fingers will adapt so I find it hard to take away points from the overall machine from this, but if you're a light typist this could be an issue for you.


### Touchpad <i class="far fa-check-circle"></i>
The touchpad on the T495s is **nice and large**, though the material leaves a bit to be desired.
Unlike the higher-end X1 Carbon (which uses *glass* for its touchpad), the T495s touchpad is made of a **Mylar material** which at times can feel less fluid and even a bit sticky compared to its' glass contemporaries.


### Trackpoint <i class="far fa-check-circle"></i>
Ol' faithful ThinkPad trackpoint. The buttons feel **nice and clicky** as always, it's a pleasure to use.

One thing to note is that I have **yet to experience any trackpoint drift** which is a huge improvement over previous iterations of the hardware.


<br />
# Performance <i class="far fa-question-circle"></i>

### CPU <i class="far fa-question-circle"></i>
* Throttles on battery pretty had
* Now using TLP so performance is worse on battery, but even with `powersave` the performance seems pretty good.
* Using BFQ scheduler (which is [now default on ChromeOS](https://www.phoronix.com/scan.php?page=news_item&px=Chromebooks-BFQ-Default-IO) and [coming soon to Fedora](https://www.phoronix.com/scan.php?page=news_item&px=Fedora-Switching-To-BFQ) the application lag on battery with the `powersave` governor is mostly negated.
* Include some CPU benchmarks

### CPU Benchmarks
https://openbenchmarking.org/result/1909014-SP-THINKPADT29
[CPU Benchmarks](/benchmarks/thinkpad-t495s-cpu/)

### GPU/APU <i class="far fa-question-circle"></i>
* Throttles on battery pretty had
* Performance is acceptable for day to day use. General desktop compositing is great and gaming performance is far above other integrated solutions.
* APU throttles more than CPU

*(See the '__Gaming__' section towards the bottom for benchmarks)*

### Storage <i class="far fa-check-circle"></i>
The NVMe SSD included in the T495s is very nice. With average **write speeds** of **250 MB/s** and **read speeds** of **1.1 GB/s** it is very rarely your bottleneck.

I've included some benchmarks for those interested:

**Write speed test**:

`$ time dd bs=16k count=102400 oflag=direct if=/dev/zero of=test_data`
```
102400+0 records in
102400+0 records out
1677721600 bytes (1.7 GB, 1.6 GiB) copied, 6.54317 s, 256 MB/s

real    0m6.885s
user    0m0.053s
sys     0m4.536s
```

**Read speed test**:

`# hdparm -t /dev/nvme0n1`
```
/dev/nvme0n1:
 Timing buffered disk reads: 3472 MB in  3.00 seconds = 1156.78 MB/sec
```


**fs_mark ([Github](https://github.com/josefbacik/fs_mark))**:

`$ fs_mark -d test  -s 10240 -n 1000 -v`
```
Count       Size         Files/sec        App Overhead
1000        10240        901.6            21158

CREAT (Min/Avg/Max)        WRITE (Min/Avg/Max)        FSYNC (Min/Avg/Max)
54      90     265         20      30      95         844     961     6606

SYNC (Min/Avg/Max)        CLOSE (Min/Avg/Max)       UNLINK (Min/Avg/Max)
0       0        0        2        5       32       10       16      133
```

### Memory <i class="far fa-check-circle"></i>
The 16GB RAM option is **dual channel 2x 8GB**.
Below is a benchmark gathered using [STREAM](https://github.com/jeffhammond/STREAM)

`$ ./stream_c.exe`

```
Function    Best Rate MB/s  Avg time     Min time     Max time
Copy:           11253.3     0.015865     0.014218     0.018171
Scale:          11174.8     0.015669     0.014318     0.018882
Add:            13363.0     0.018631     0.017960     0.020059
Triad:          13321.6     0.019757     0.018016     0.022583
```

### Wireless <i class="far fa-check-circle"></i>
The included **Intel 9260 802.11ac** wireless network card works well.
In comparison to the *7260* in my old X1 Carbon I am now able to get a **consistent 5GHz connection** across my entire apartment, whereas before I needed to switch to 2.4GHz if I was more than 20 feet from my AP.

<br />
# Linux <i class="far fa-check-circle"></i>

As for Linux on the T495s, my original plan was to run [Fedora Silverblue](https://silverblue.fedoraproject.org/) but F30 doesn't include the required [systemd patch for rdrand](https://github.com/systemd/systemd/issues/11810) meaning Silverblue cannot be installed until Fedora 31 is released.
Fortunately I was able to install Fedora Workstation 30 using the [updated Fedora Desktop ReSpin](https://dl.fedoraproject.org/pub/alt/live-respins/) with no issues.

All of my hardware seems to just work out of the box.
I'm currently running `kernel 5.2.9` and `systemd 241 (v241-10.git511646b.fc30)` .
Unfortunately the **validity fingerprint scanner is still unsupported in Linux**. The community is currently attempting to reverse engineer a driver, see the [Validity90 Github project](https://github.com/nmikhailov/Validity90)

`amdgpu` works using the open source drivers which utilizes `RADV` for Vulkan, and the performance is fantastic.
Gnome desktop compositing is very snappy on the Vega 8 in places where my old Intel HD would lag.
Gaming is also pretty good for an integrated APU, though see the **'Gaming'** section towards the bottom for more information on that.

Keep in mind that a **minimum of kernel 5.1** (or 5.0.9) is required as previous kernels required boot arguments to workaround some hard locks caused by the AMD CPU.

The Synaptics touchpad is well supported by libinput and works with no configuration required.

One negative thing is that **suspend seems to be blocked by the bluetooth adapter**.
When you `systemctl suspend` the device it is woken back up, but the graphics are corrupt and the machine is unusable requiring a hard reboot.
I've figured out a workaround using `udev` and `systemd`, see my [article on that fix](/posts/intel-9260-suspend/).


<br />
# Battery <i class="far fa-times-circle"></i>
The T495s includes a **single internal 57 Wh battery** which is **non-removable**.

Battery life is the one area where the T495s falters.
Reported battery life of users running Windows (on [/r/thinkpad](https://reddit.com/r/thinkpad/)) seems to be in the realm of 5~9 hours, while on Linux it is more like **3-6 hours of battery life** with [TLP](https://linrunner.de/en/tlp/docs/tlp-linux-advanced-power-management.html) configured and enabled.

Idle power draw seems pretty high, with just Firefox open playing music and a terminal the machine averages between **9.4W and 11.5W of power draw**
-- for reference equivalent Intel hardware sits at roughly *5W to 9W of idle power draw*.

Hopefully AMD's next iteration of Ryzen mobile will improve on this since it's one area where Intel truly, without argument, has them beat.


<br />
# Gaming <i class="far fa-check-circle"></i>

The Vega 8 works well for light gaming. I've been playing DotA Underlords, Hollow Knight, and Oxenfree all with no issues and solid framerates.
amdgpu's Vulkan implementation is well maintained meaning Proton works well.
I'm currently getting roughly 200%-300% the framerate I got on Intel in Fallout: New Vegas, though it's still not perfect (but I think that's just the Build Engine in general.)

Performance in higher end games like DotA2 and Counter Strike is still below what I expected, but playable. DotA2 average about 45FPS outside of team fights.

[Upcoming changes to Mesa](https://www.phoronix.com/scan.php?page=news_item&px=Mesa-Radeon-Boost-No-vRAM-Type) in 19.3 may improve the APU's performance by 30%, when this hits primetime I'll do an updated benchmark of the APU.

### Benchmarks

**glmark2 ([Github](https://github.com/glmark2/glmark2)):**

`$ glmark2`
```
glmark2 Score: 3763
```

**Ungine Heaven ([Link](https://benchmark.unigine.com/heaven?lang=en))**:

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

[Phoronix Test Suite](https://www.phoronix-test-suite.com/)

**Xonotic @ 1080p, Ultra**
```
    Average: 85.65 Frames Per Second
    Minimum: 26
    Maximum: 159
    Deviation: 5.63%
```

# Overall <i class="far fa-check-circle"></i>
A great machine.
