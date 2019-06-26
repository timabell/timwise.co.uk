---
layout: post
title: getting supybot to announce new bugzilla bugs
date: '2009-11-16T17:22:00.005Z'
author: Tim Abell
tags:
- irc
- howto
- ubuntu
- linux
- bugzilla
- script
- oss
- sys admin
modified_time: '2009-11-17T10:23:25.092Z'
blogger_id: tag:blogger.com,1999:blog-5082828566240519947.post-8826812947380288670
blogger_orig_url: https://timwise.blogspot.com/2009/11/getting-supybot-to-announce-new.html
---

getting supybot to announce new bugzilla bugs - I've just put here the key non-obvious things that tripped me up when trying to set this up.<br /><br />All done on Ubuntu 8.04.3 LTS<br /><br />Install <a href="http://sourceforge.net/projects/supybot/">supybot</a> and the <a href="http://code.google.com/p/supybot-bugzilla/">supybot bugzilla plugin</a>.<br /><br />Create a system group (supybot) and user (bugbot) to run supybot as.<br /><br />Set up your supybot configuration file as desired.<br /><br />Getting supybot to start at startup:<br /><a href="http://www.schwer.us/journal/2005/04/17/supybot-init-script-for-debian/">http://www.schwer.us/journal/2005/04/17/supybot-init-script-for-debian/</a><br /><br />Here's my modified init script<br /><br /><code>$ cat /etc/init.d/bugbot<br />#! /bin/sh<br />#<br /># supybot init script<br /># http://www.schwer.us/journal/2005/04/17/supybot-init-script-for-debian/<br />#<br /><br />PATH=/sbin:/bin:/usr/sbin:/usr/bin<br />DAEMON=/usr/bin/supybot<br />NAME=supybot<br />DESC=supybot<br /><br />test -f $DAEMON || exit 0<br /><br />set -e<br /><br />case "$1" in<br />start)<br />echo -n "Starting $DESC: "<br />start-stop-daemon --start --quiet \<br />--chuid bugbot --exec $DAEMON -- --daemon /etc/supybot/bugbot.conf<br />echo "$NAME."<br />;;<br />stop)<br />echo -n "Stopping $DESC: "<br />start-stop-daemon --stop --quiet \<br />--oknodo --exec /usr/bin/python<br />echo "$NAME."<br />;;<br />restart)<br />$0 stop<br />$0 start<br />;;<br />*)<br />echo "Usage: $0 {start|stop|restart}" &gt;&2<br />exit 1<br />;;<br />esac<br /><br />exit 0</code><br /><br />Set up bugzilla to send a copy of all bugmail to a local address (eg bugbot@localhost), and configure exim4 to accept local mail (as well as smart host delivery), using the mbox format.<br /><br /><code>sudo dpkg-reconfigure exim4-config</code><br /><br />Start a conversation with bugbot, get it to identify you, then set the required configuration by sending it messages (you can also set these in the supybot .conf file for your bot):<br /><ul><li>config plugins.Bugzilla.mbox /var/mail/bugbot</li><br /><li>config plugins.Bugzilla.bugzillas.your-bugzilla-name.watchedItems.all True<br />which will turn on the announcements (i had to read the code to find that one!)</li></ul><br /><br />Note that supybot doesn't immediately write config changes to disc.