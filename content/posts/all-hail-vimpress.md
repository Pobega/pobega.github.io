---
title: "All Hail Vimpress!"
date: 2008-12-21T18:08:27-04:00
draft: false
tags: ["archive","vim"]
---
For the last week I've been using [Drivel](https://dropline.net/past-projects/drivel-blog-editor/) -- a GNOME application for blogging from your desktop. The problem with using Drivel for a Wordpress blog is that it doesn't support multiple categories or even tags! Luckily, I've found a nice alternative that integrated with my favorite text editor; [Vimpress](https://www.vim.org/scripts/script.php?script_id=1953)!

Vimpress supports categories and tags, as well as the ability to edit previous posts. My only quarry with Vim is that it doesn't allow the deletion of older entries, for which I'm still forced to login to my Wordpress dashboard to do. The commands for Vimpress are:

* *:BlogNew* - Creates a new blog entry.
* *:BlogList* - Lists all previous entries. Press enter while your cursor is on one to edit it
* *:BlogSend* - Send your new entry or edit to Wordpress

Just a tip; Don't touch the StrID ever. Wordpress will automatically assign you one when you send a new entry, so don't worry yourself about it. Have fun, and happy blogging!

