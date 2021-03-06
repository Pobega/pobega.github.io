---
title: "Lenovo Thinkpad T495s Review"
date: 2019-09-02T22:37:10-04:00
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
After waiting months Lenovo finally dropped three new laptops: The ThinkPad [T495](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-t-series/T495/p/22TP2TTT495), [T495s](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-t-series/T495s/p/22TP2TT495S) and [X395](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-x/X395/p/22TP2TXX395).


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


Lenovo's 2019 ThinkPad redesign trades ports and upgradability for a thinner and lighter body.

<hr />
![T495s sitting on an X301](/images/thinkpad-t495s/profile.jpg)
*T495s profile, apologies for the poor room lighting*
<hr />

The machine feels light to the touch and is well weighted, it's generally a pleasure to use it on a daily basis.
The T495s fits the ultrabook form factor more than the laptop one and is more akin to an "X1 Carbon Lite" than a proper successor to the T480s (though without the premium glass touchpad of the X-series.)

While these changes to the T49\*s line may annoy some users, as a cloud-focused developer the tradeoff is OK by me.

*(Note that if you are looking for the successor to the T480s you should look at the T490/T495)*

### Size & Weight <i class="far fa-check-circle"></i>


The ThinkPad T495s shares it's chassis with the T490s, coming in at **16.1 mm** thick and weighing **2.81 lbs/1.27 kg**.
This tiny design manages to pack in a **57 Wh battery** which recharges in about an hour with the included 65W AC adapter.


<hr />
![T495s X301 comparison](/images/thinkpad-t495s/sideview.jpg)
*T495s on top of a classic X301*
<hr />


Compared to last year's T480s Lenovo has managed to shave off *2.3 mm* and *.09 lbs/0.4 kg* which is pretty respectable.


In day-to-day use I barely notice the machine in my backpack. Coming from the X1 Carbon Gen 3 (*19.65 mm* / *2.99 lbs/1.35 kg*) this is actually a noticeable improvement.


### Ports <i class="far fa-question-circle"></i>


As stated earlier the new thinness and weight does come with some tradeoffs, namely ports.
The **RJ-45** jack on the T480s is **gone** in favor of an adapter port on the left side of the machine, as is the **SDHC card reader**.


On the USB side of things it has two **USB-A 3.1** ports (one powered), a **USB-C** charger port and a spare **USB-C** port for connecting devices such as headphones or docks. I have tried to use the USB-C charger port to connect devices when on battery but it doesn't seem to be wired for data transfer, only charging.


Unfortunately AMD laptops do not support *Thunderbolt* at the current time (it's Intel exclusive,) which means if you are trying to use an eGPU or Thunderbolt dock you are out of luck with this year's AMD ThinkPad offerings.


For display connectivity the T495s does still manage to pack in a **full-size HDMI 2.0** port which on top of the aforementioned **USB-C** port can be used to power multiple external displays.


The T495s still sports the old faithful **3.5mm combo headphone/mic jack** which works exactly as you'd expect.


The loss of the *RJ-45* and *SDHC* are definitely overall cons to the new design but the tradeoff for slimness and lightness may just be worth it overall.
While I'll need to invest in an external SDHC reader to get pictures off my camera I don't need the SDHC card every moment of every day and I've personally never found the performance of SD to be good enough to use as a dedicated storage device.


<br />
# Display <i class="far fa-check-circle"></i>


The **FHD 400-nit Low Power IPS** display offered on the T495s is a really fantastic panel.
The display is **bright**, **vibrant** and the **viewing angles are wide**.
Keep in mind the display is **matte** so very comfortable to use in direct sunlight.
This specific panel is the **low power** display, although currently I can't get hard information on the power draw as *powertop* is reporting it as 0 mW usage.

<hr />
![Display Sideview](/images/thinkpad-t495s/display-sideview.jpg)
*The 400-nit low power display's viewing angles are fantastic*
<hr />

My specific machine has the *N140HCG-GQ2* made by *Innolux* which apparently is the [winner of the IPS lottery](https://www.notebookcheck.net/Lenovo-s-Panel-Lottery-continues-with-3-different-14-inch-LowPower-displays.426538.0.html) for this line of ThinkPads.
Speaking for the Innolux panel I can say that the ghosting and input delay reported by other users with the FHD low-power IPS panel aren't an issue.
I've done some very basic measurements (playing fighting games) and haven't noticed any appreciable input delay, so for day-to-day use the Innolux panel is perfect.


<br />
# Keyboard, touchpad and trackpoint <i class="far fa-check-circle"></i>
### Keyboard <i class="far fa-question-circle"></i>

The standard 14" ThinkPad keyboard is as **great as ever**.
It uses a **standard ThinkPad layout** with smile-shaped keycaps, though the **capslock key light** is a much appreciated addition compared to previous iterations.

Compared to my X1 Carbon Gen3 the **keys feel a bit heavy**.
It could just be me but sometimes I feel like the weight of the keys causes me to miss keystrokes.
I think over time my fingers will adapt but if you're a light typist this could be an issue for you.


### Touchpad <i class="far fa-check-circle"></i>
The touchpad on the T495s is **nice and large**, though the material leaves a bit to be desired.
Unlike the higher-end X1 Carbon (which uses *glass* for its touchpad) the T495s touchpad is made of a **Mylar material** which at times can feel less fluid and even a bit sticky compared to its glass contemporaries.


### Trackpoint <i class="far fa-check-circle"></i>
Ol' faithful ThinkPad trackpoint. The buttons feel **nice and clicky** as always it's a pleasure to use.

One thing to note is that I have **yet to experience any trackpoint drift** which is a huge improvement over previous iterations of the hardware.


<br />
# Performance <i class="far fa-question-circle"></i>

## CPU <i class="far fa-question-circle"></i>
My T495s is equipped with the AMD Ryzen 5 PRO 3500U with frequencies of **1.40 GHz to 2.10 GHz**.
The spec sheet claims that it can 'Turbo Boost' up to *3.70 GHz*, but **turbo boost doesn't seem to be supported** according to `cpufreq frequency-info` (`boost state support: Supported: no`)

The Ryzen 5 **throttles pretty hard on battery** which results in very visible performance differences (even when using the same CPU governor.)
For day to day use I use TLP for powersaving which results in even worse performance on battery, but even with `powersave` the performance seems good compared to Intel.
Though I say the difference is noticeable the Ryzen 5 still retains usability on battery, the only time it's visibly different is when gaming, compiling or doing heavy multitasking.

I've switched to using the BFQ scheduler (which is [now default on ChromeOS](https://www.phoronix.com/scan.php?page=news_item&px=Chromebooks-BFQ-Default-IO) and [coming soon to Fedora](https://www.phoronix.com/scan.php?page=news_item&px=Fedora-Switching-To-BFQ)) and the multitasking lag on battery with the `powersave` governor is mostly negated.

### CPU Benchmarks
#### [Full CPU Benchmark Results](/benchmarks/thinkpad-t495s/cpu/) ([OpenBenchmarking.org mirror](https://openbenchmarking.org/result/1909014-SP-THINKPADT29))
![CPU Benchmark Overview](/benchmarks/thinkpad-t495s/cpu/result-graphs/overview.png)

<br />
## GPU/APU <i class="far fa-question-circle"></i>
For general use the Vega 8 is above average, and definitely well above its Intel competitors.
Desktop compositing is no issue and it handles light gaming extremely well.

According to `/sys/kernel/debug/dri/0/amdgpu_pm_info` the supported clocks on the APU are:
```
GFX Clocks and Power:
	933 MHz (MCLK)
	200 MHz (SCLK)
	700 MHz (PSTATE_SCLK)
	933 MHz (PSTATE_MCLK)
```

Though at it's maximum it is apparently able to hit **1200 MHz**.

Keep in mind that the **APU shares 2GB of system memory** so if you go with the 8GB configuration you will only have 6GB for your operating system.

Unfortunately, similarly to the CPU the **APU throttles on battery** (which makes sense, since it's technically integrated.) Again, similarly to the CPU it's not noticeable during day to day tasks but if you try gaming on the go you will definitely notice a difference in speeds.

### GlMark2 Benchmark
![GlMark2 Benchmark](/benchmarks/thinkpad-t495s/glmark2/result-graphs/1.png)

*(See the '__Gaming__' section towards the bottom for more benchmarks)*

<br />
### Storage <i class="far fa-check-circle"></i>
The NVMe SSD included in the T495s is very nice. With average **write speeds** of **250 MB/s** and **read speeds** of **1.1 GB/s** it is a pleasure to use.

### Storage Benchmarks

#### [Full Disk Benchmark Results](/benchmarks/thinkpad-t495s/disk/) ([OpenBenchmarking.org mirror](https://openbenchmarking.org/result/1909012-SP-THINKPADT31))
![Disk Benchmark Overview](/benchmarks/thinkpad-t495s/disk/result-graphs/small-overview.png)


<br />
### Memory <i class="far fa-check-circle"></i>
The 16GB RAM in the T495s is **dual channel**, two sticks of **8GB DDR4 RAM**.
The memory speed is listed by the BIOS as **2400 MT/s**.
Unlike the previous generation's T480s the RAM in the T495s is **soldered to the motherboard** and **is not user upgradeable** so keep this in mind when specing your T495s.

### Memory Benchmarks
#### [Full Memory Benchmark Results](/benchmarks/thinkpad-t495s/memory/) ([OpenBenchmarking.org mirror](https://openbenchmarking.org/result/1909024-SP-THINKPADT22))
![Memory Benchmark Overview](/benchmarks/thinkpad-t495s/memory/result-graphs/small-overview.png)

<br />
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
**Gnome desktop compositing is snappy** on the Vega 8 in places where my old Intel HD would lag.
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

### Gaming Benchmarks

For consistency sake (due to offered resolutions in the benchmarking tools) I benchmarked both 1920x1080 and 1024x768 at different graphics presets.
Click the links to the full benchmark results to see additional benchmarks and settings not included in the review for brevity's sake.

### Steam Games
For additional benchmarks check the full results:
#### [Full Steam Gaming Benchmark Results](/benchmarks/thinkpad-t495s/steam_gaming) ([OpenBenchmarking.org Mirror](https://openbenchmarking.org/result/1909027-SP-THINKPADT40))

![CSGO Benchmark](/benchmarks/thinkpad-t495s/steam_gaming/result-graphs/7.png)

Counter Strike seems to run the best of all the games with good performance on average at 1080p.
For real world use I don't recommend playing at anything less than 60 FPS though, which is achievable in 1920x1080 without sacrificing too much quality.

<hr />

![DotA OpenGL Benchmark](/benchmarks/thinkpad-t495s/steam_gaming/result-graphs/17.png)
![DotA Vulkan Benchmark](/benchmarks/thinkpad-t495s/steam_gaming/result-graphs/18.png)

DotA interestingly gets slightly better performance in the Vulkan benchmark though in my experience during real world play is that OpenGL performs a bit better during hectic moments.

This is a benchmark that I'm hoping improves with the changes coming to Vega APUs in Mesa 19.3

<hr />

![DiRT Rally Ultra Low Benchmark](/benchmarks/thinkpad-t495s/steam_gaming/result-graphs/14.png)
![DiRT Rally Medium Benchmark](/benchmarks/thinkpad-t495s/steam_gaming/result-graphs/12.png)
![DiRT Rally High Benchmark](/benchmarks/thinkpad-t495s/steam_gaming/result-graphs/10.png)

DiRT Rally on Medium at 1080p seems to be the sweet spot.
If you can stomach a lower rendering resolution then you should be able to easily play on the high preset at a consistent 30FPS.
Ultra Low gets fantastic performance and still looks pretty great, too.

<hr />

![BioShock Infinite Medium Benchmark](/benchmarks/thinkpad-t495s/steam_gaming/result-graphs/2.png)
![BioShock Infinite Very High Benchmark](/benchmarks/thinkpad-t495s/steam_gaming/result-graphs/4.png)

<hr />

### Other Games/Benchmarks
For additional benchmarks check the full results:
#### [Full Gaming Benchmark Results](/benchmarks/thinkpad-t495s/gaming) ([OpenBenchmarking.org Mirror](https://openbenchmarking.org/result/1909012-SP-THIKNPADT72))

![OpenArena Benchmark](/benchmarks/thinkpad-t495s/gaming/result-graphs/3.png)
![OpenArena Benchmark](/benchmarks/thinkpad-t495s/gaming/result-graphs/4.png)

![Xonotic Benchmark](/benchmarks/thinkpad-t495s/gaming/result-graphs/30.png)
![Xonotic Benchmark](/benchmarks/thinkpad-t495s/gaming/result-graphs/32.png)

These old Quake3-like games work like a charm, even with the more modern lighting effects and shaders.

<hr />

![Ungine Heaven Benchmark](/benchmarks/thinkpad-t495s/gaming/result-graphs/20.png)
![Ungine Superposition Benchmark](/benchmarks/thinkpad-t495s/gaming/result-graphs/26.png)
![Ungine Valley Benchmark](/benchmarks/thinkpad-t495s/gaming/result-graphs/28.png)

While these Ungine Benchmarks might read poorly, they actually aren't half bad!
The Ungine benchmarks are a little bit inconsistent especially with the thermal throttling of the APU after running the previous tests.

Messing with these benchmarks manually and changing options results in a respectable score for an integrated APU, especially when compared to Intel integrated.

<br />
# Overall <i class="far fa-check-circle"></i>
The ThinkPad T495s is a great machine for someone looking for an **ultrabook with great Linux compatibility** or someone just looking to migrate away from the monopoly of Intel in mobile.
The T495s takes everything great about ThinkPads (minus the upgradeability) and fits it into a nice tiny form factor which is great for both travel and play.

Also of note is that the new 400-nit 1080p matte panels are seriously fantastic to use, if you do decide to purchase any current-gen ThinkPad make sure to grab one of these displays.

<hr />
![ThinkPad Logo Closeup](/images/thinkpad-t495s/outro.jpg)
*a worthy addition to the ThinkPad lineage*
<hr />

The biggest **downsides** to AMD's 2019 mobile offerings is the **thermal throttling** of the CPU & APU and the **weak battery life** of the Ryzen Pro compared to comparable Intel configurations.

But if you're a Linux-head looking for a compatible laptop and want to move away from Intel (or want an integrated graphics solution that can handle light gaming) and don't care about getting more than 5 hours of battery life the ThinkPad T495s may be exactly the upgrade you've been waiting for.
