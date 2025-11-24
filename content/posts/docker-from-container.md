---
title: "Developing using Docker inside of a container"
date: 2025-11-20T13:53:42-04:00
draft: false
tags: ["linux","flatpak","docker","development"]
---
For the last six years or so I've been running [Fedora Atomic](https://fedoraproject.org/atomic-desktops/) as my daily driver; an immutable version of Fedora that uses Flatpaks and containers rather than installing packages to the host OS.

One complication is that so many projects use Docker, and running Docker from inside a container is generally not supported. Fortunately for us, [flatpak-spawn](https://docs.flatpak.org/en/latest/flatpak-command-reference.html#flatpak-spawn) lets us run binaries on the host OS and pass their output into the container.

You do have to have `docker` as a layered package on your host OS via `rpm-ostree`, consult Google for up-to-date information on that.

Once Docker is installed the trick is to create a shim shell script somewhere in your `$PATH` (such as `~/.local/bin/docker`) that calls out to `flatpak-spawn`:

```
#!/bin/bash

if [ ! -x /usr/bin/docker ]; then
  flatpak-spawn --host /usr/bin/docker "$@"
else
  /usr/bin/docker "$@"
fi
```

This allows us to run `docker` via `flatpak-spawn` when inside a container (where `/usr/bin/docker` doesn't exist), but still run `docker` directly from the host.

Note: You can also get away with an alias such as `alias docker='flatpak-spawn --host docker'`
