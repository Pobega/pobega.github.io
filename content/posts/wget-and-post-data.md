---
title: "Wget and Post Data"
date: 2008-12-21T16:41:36-04:00
draft: false
tags: ["archive","gaming","web","automation"]
---

I had an idea for a script to automatically log me in to Advance Wars by Web and grab the number of games which it is my turn in, but Wget seems to have a lot of trouble with post-data and cookies while accessing pages. Currently, this is how my script looks:

```
#! /bin/sh
# Script for grabbing "Your Turn Games" from AWBW (http://awbw.amarriner.com)
# Written and maintained by Michael Pobega
# Special thanks to the GNU Wget manpage for help with cookie sessions

wget --keep-session-cookies --save-cookies cookies.txt --post-data 'username=pobega&password=PASSWORD' --keep-session-cookies http://awbw.amarriner.com/login.php

wget --load-cookies cookies.txt http://awbw.amarriner.com/yourturn.php
```

Every time I'd login to the page, the downloaded yourturn.php would complain that I was not logged in. I'm going to mess around with this script a little more and hopefully find the problem.

**Edit**: Nevermind, I found the problem. I guess I'm a bit blind, but it's right in the wget(1) manpage:

If the server is using session cookies to track user authentication, the above will not work because --save-cookies will not save them (and neither will browsers) and the cookies.txt file will be empty. In that case use --keep-session-cookies along with --save-cookies to force saving of session cookies.
