---
title: "Tunneling a connection through SSH"
date: 2009-02-01T14:23:15-04:00
draft: false
tags: ["archive","college"]
---

So I finally arrived at school, only to find that my college has decided to block IRC on the campus wifi. Weirdly enough, they allow AIM/MSN/Jabber/Skype/Ekiga/etc traffic, but not IRC. According to the IT department *"IRC is commonly used to spread viruses"*. I'm not sure how valid that is, but it didn't stop me from trying to connect to my usual IRC networks.

Luckily all they did was block the common (6000~7000) IRC ports, which meant that I could still get on any networks that offered alternate ports. But for those odd servers that don't offer any ports outside of the 6000~7000 range, there is another way to get around this block using an SSH tunnel and a program called tsocks, a program made to simplify the use of a SOCKS proxy connection. After installing tsocks find tsocks.conf and make sure everything else is commented out but:

```
server = 127.0.0.1
# Server type defaults to 4 so we need to specify it as 5 for this one
server_type = 5
# The port defaults to 1080 but I've stated it here for clarity
server_port = 1025
```

Now when you connect to your SSH server, you use the -D flag followed by the port in your tsocks.conf. For example, if you were using my configuration you would run `ssh -D 1025 servername`

Another use for this is to achieve wired connection speeds with a wireless connection - you can tunnel wget through tsocks and increase your download speed (considering your SSH server is on the local network)

Have fun and happy chatting!
