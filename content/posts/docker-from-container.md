---
title: "Developing using Docker inside of a container"
date: 2025-11-20T13:53:42-04:00
draft: false
tags: ["linux","flatpak","docker","development"]
---
This guide assumes familiarity with Linux command-line operations, Docker, and Fedora Atomic concepts.

For the last six years or so I've been running [Fedora Atomic](https://fedoraproject.org/atomic-desktops/) as my daily driver; an immutable version of Fedora that uses Flatpaks and containers rather than installing packages to the host OS. This means the base operating system is read-only, making direct installation of packages like Docker challenging within the host environment.

One complication is that so many projects use `docker` for building which is not supported inside of a container. Fortunately for us there are a few methods to run containers inside your containers.

## Method 1
This method uses a layered `docker` package on your host and utilizes `flatpak-spawn` to launch it on the host, forwarding the output back into the container. First make sure to have `docker` as a layered package on your host OS via `rpm-ostree` (e.g., `sudo rpm-ostree install docker-ce`), consult Google for up-to-date information on that.

Once `docker` is installed create a shim shell script somewhere in your `$PATH` (such as `~/.local/bin/docker`) that calls out to `flatpak-spawn`:

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

Another method for using `docker` inside your container actually uses Podman's host socket with a standard `docker` client in your guest.

First, ensure that you enable the user socket for your user:

```
(host-system)$ systemctl --user enable --now podman.socket
```

Then inside your container, install `docker`:

```
(container)$ sudo dnf install docker
```

To tell `docker` to use the host's socket, set your `DOCKER_HOST` environment variable:

```
export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"
```

And you should have working Docker inside your container! Be sure to set this variable somewhere automatic as well, like in `~/.bashrc` (or your shell's equivalent.)

Downsides to this method are that there appear to be permission issues (I've run into some issues with passing volumes,) and I don't think it's fully compatible with Docker compose (since you are technically using Podman as your Docker host.) But this one requires the least setup and is the simplest of the two.

### Conclusion

Choosing between these methods depends on your specific needs. Method 1 offers a more direct Docker experience with potential `flatpak-spawn` quirks, while Method 2 provides a simpler setup by leveraging Podman, though it may have compatibility limitations with advanced Docker features like Docker Compose or volume passing.
