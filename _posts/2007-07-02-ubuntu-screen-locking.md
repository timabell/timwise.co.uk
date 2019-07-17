---
layout: post
title: Ubuntu screen locking
date: '2007-07-02T21:15:00.000Z'
author: Tim Abell
tags:
- howto
- ubuntu
- linux
- laptop
modified_time: '2007-07-02T21:23:01.224Z'
blogger_id: tag:blogger.com,1999:blog-5082828566240519947.post-6079608926457625139
blogger_orig_url: https://timwise.blogspot.com/2007/07/ubuntu-screen-locking.html
---

Howto prevent ubuntu locking the screen when closing the laptop lid.<br /><br />Thanks to jrib in irc://freenode.net/#ubuntu for this one.<br /><br /><ul><li>Run gconf-editor (with alt+F2)</li><br /><li>Go to or search for /desktop/gnome/lockdown</li><br /><li>Tick disable_lock_screen</li><br /><li>Restart gnome (ctrl+alt+backspace - after saving your documents it's a bit brutal!)</li><br /></ul>