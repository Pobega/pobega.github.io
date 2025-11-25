---
title: "Developing using Docker inside of a container"
date: 2025-11-20T13:53:42-04:00
draft: false
tags: ["linux","flatpak","docker","development"]
---
For the last six years or so I've been running [Fedora Atomic](https://fedoraproject.org/atomic-desktops/) as my daily driver; an immutable version of Fedora that uses Flatpaks and containers rather than installing packages to the host OS.

One complication is that so many projects use Docker, and running Docker from inside a container is generally not supported. Fortunately for us there are a few methods to get run containers inside your containers.

## Method 1
This method uses a layered `docker` package on your host and utilizses `flatpak-spawn` to launch it on the host, forwarding the output back into the container. First make sure to have `docker` as a layered package on your host OS via `rpm-ostree`, consult Google for up-to-date information on that.

Once Docker is installed create a shim shell script somewhere in your `$PATH` (such as `~/.local/bin/docker`) that calls out to `flatpak-spawn`:

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

Downsides to this method are that I've seen some strange clashing with `flatpak-spawn` and Flatpaks running on the host, but it doesn't appear to happen very often.

## Method 2

Another method for using Docker inside of Toolbx actually uses Podman's host socket with a Docker client inside of the container.

First, ensure that you enable the user socket for your user:

```
systemctl --user enable --now podman.socket
```

Then enter your toolbox and simply `sudo dnf install docker`. To tell Docker to use the host's socket, set your DOCKER_HOST environment variable:

```
export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"
```

And you should have working Docker inside your container!

Downsides to this method are that there appear to be permission issues, and I don't think it's fully compatible with Docker compose (since you are technically using Podman as your Docker host.) But this one requires the least setup and is the simpler.
