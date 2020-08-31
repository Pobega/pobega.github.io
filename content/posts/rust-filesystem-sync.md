---
title: "Monitoring filesystem syncing with Rust"
date: 2020-08-30T18:24:03-04:00
draft: false
tags: ["linux","rust"]
---
I've been using the [writedisk crate (crates.io)](https://crates.io/crates/writedisk) for a while now to write disk images to USB drives. The interface is much nicer than using `dd` manually and it presents a list of USB devices and their human readable names to select from.

!["Writedisk Old"](/images/writedisk/writedisk-old.png)

One thing that irked me was that there was a progress bar for copying the files but not for the filesystem sync afterwards so I decided to implement it myself.

Unfortunately it seemed to be a bit more complicated than I originally anticipated. There [didn't seem to be a good way to get the progress of a `sync` command (stackexchange.com)](https://unix.stackexchange.com/questions/48235/can-i-watch-the-progress-of-a-sync-operation) outside of monitoring dirty pages. Additionally there didn't seem to be a good way to get the dirty pages of just a single disk meaning we'll need to rely on the OS dirty pages to get the job done.

I chose to use the [procfs crate (crates.io)](https://crates.io/crates/procfs) to read `/proc/meminfo` which exposes it simply via:
```rust
let myprocfs = procfs::Meminfo::new();
myprocfs.dirty
```

Since we can't get the **exact** amount of dirty pages left for the UBB sync I decided we could flub it a bit by monitoring the dirty bits _as they approached zero_:

```rust
    // Get dirty pages after copy
    let meminfo = procfs::Meminfo::new().unwrap();
    let dirty_after_copy = meminfo.dirty - dirty_before_copy;

    thread::spawn(move || loop {
        let meminfo = procfs::Meminfo::new().unwrap();
        let percent = 100 - (meminfo.dirty) / (dirty_after_copy / 100));
        /* Update progress bar */
    });

    dst.sync_data().unwrap(); // sync data and block until done
```

One problem with this solution is that on a busy system there may already be dirty pages before the copy so your progress bar would never be _exactly_ correct making _as it approaches zero_ a mediocre metric to use.

Therefore I decided that instead of using _zero_ I would use the dirty bits before copy as my progress bar's "goal":

```rust
    // Get dirty pages before copy
    let meminfo = procfs::Meminfo::new().unwrap();
    let dirty_before_copy = meminfo.dirty;

    /* Code that copies image to USB here */

    // Get dirty pages after copy
    let meminfo = procfs::Meminfo::new().unwrap();
    let dirty_after_copy = meminfo.dirty - dirty_before_copy;

    thread::spawn(move || loop {
        let meminfo = procfs::Meminfo::new().unwrap();
        let percent = 100 - ((meminfo.dirty.saturating_sub(dirty_before_copy)) / (dirty_after_copy / 100));
        /* Update progress bar */
    });

    dst.sync_data().unwrap(); // sync data and block until done
```

And there we go - now we have a progress bar for disk syncing.

!["Writedisk New"](/images/writedisk/writedisk-new.png)

If you're interested in seeing the code or the feedback I got on it you can view my PR here: https://github.com/nicholasbishop/writedisk/pull/5
