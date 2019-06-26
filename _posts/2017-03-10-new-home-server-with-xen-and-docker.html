---
layout: post
title: New home server with Xen and docker
date: 2017-03-10 00:03:48.000000000 +00:00
type: post
parent_id: '0'
published: true
password: ''
status: publish
categories: []
tags: []
meta:
  _rest_api_published: '1'
  _rest_api_client_id: "-1"
  _publicize_job_id: '2695137876'
  _wpcom_is_markdown: '1'
  _oembed_220097354ef38600e6d6270169e684f0: <a href="https://flic.kr/p/SYQSYf"><img
    src="https://farm5.staticflickr.com/4164/33461099014_c2ce23d162.jpg" alt="IMG_20170424_121829_crop"
    width="500" height="114" /></a>
  _oembed_time_220097354ef38600e6d6270169e684f0: '1493305631'
author:
  login: timabell
  email: tim@timwise.co.uk
  display_name: timabell
  first_name: ''
  last_name: ''
permalink: "/2017/03/10/new-home-server-with-xen-and-docker/"
---
<h2>No cloud mkay?</h2>
<p>Going against the current received wisdom I personally am not keen to trade the convenience of the public cloud sync services such as dropbox, onedrive, google drive etc for the fact that this means that all my files traverse the public internet and live on someone else's metal. Sure it might be encrypted, but what if my traffic is intercepted and stored, and then that encryption is later found to be flawed?</p>
<p>I'm probably just as likely to get pwned running my own setup, but hey at least I get to learn something along the way.</p>
<p>Another thought is that regardless of location - home, office, cloud, vps host or data centre - it's all just (server) software. So why shouldn't we be able to get the amazing seamless experience when self hosting? It seems to me that it comes down to economics. Cloud hosting gives an opportunity for charging directly or worse using underhand tactics like owning your data or selling you as a product to advertisers. This means there is more funding for cloud systems, and therefore more developers are working on it. Even ethically minded software developers have to eat and live somewhere. I think just like Linux vs Windows we will get a perfectly good open source solution, but it will likely lag behind.</p>
<h2>Disk encryption</h2>
<p>I have a new machine to use as a server so have an opportunity for a fresh approach. I want my server encrypted at rest in case the whole machine gets stolen from the house to keep the scoundrels from having easy access to all my files.</p>
<p>The previous machine I installed with encrypted LVM as available with Ubuntu server's installer; but this means going to the machine to unlock it after every reboot / power failure / kernel upgrade. I did have <a href="http://blog.nguyenvq.com/blog/2011/09/13/remote-unlocking-luks-encrypted-lvm-using-dropbear-ssh-in-ubuntu/">remote unlock via dropbear ssh</a> set up but it's hacky to set up and non-trivial to use.</p>
<p>This time I've gone for a different approach:</p>
<ul>
<li>An unencrypted install of ubuntu server (DomU) with an ssh server, so no password required to boot up, which does nothing more than give access to:</li>
<li>A Xen VM install of Ubuntu server (Dom1), this one with LVM disk encryption. This is where all my files etc will live. Installed with <a href="https://virt-manager.org/">virt-manager</a>, which is a very convenient UI for initial setup.</li>
</ul>
<p>So now after a reboot I can <code>ssh -X</code> into the DomU server, then using virt-manager I can see the Dom1 VM waiting for the disk encryption key and provide the passphrase.</p>
<h2>Xen</h2>
<p><a href="https://help.ubuntu.com/community/Xen#Installing_Xen">Setup instructions for xen on Ubuntu</a>.</p>
<p>It wasn't immediately obvious how to set up the networking. This was the network config that worked in the end (after ifdown/ifup, also tested with full reboot):</p>
<pre>$ cat /etc/network/interfaces
source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

auto xenbr0
iface xenbr0 inet dhcp
  bridge_ports enp1s0

# The primary network interface
auto enp1s0
iface enp1s0 inet manual
#iface enp1s0 inet dhcp</pre>
<h2>Docker</h2>
<p>Seeing as docker is well and truly coming to windows it's time I got better at this so, for this and also better isolation and security I'll try and set up as many of the services I want to run as I can through docker.</p>
<p>First test case was <a href="https://transmissionbt.com/">transmission-bt</a> which I run to be a good citizen and help seed <a href="https://www.linuxmint.com/download.php">Linux Mint ISOs</a> using my <a href="https://aa.net.uk/broadband-home1.html">A&amp;A unmetered upload</a>.</p>
<p><a href="https://hub.docker.com/search/?isAutomated=0&amp;isOfficial=0&amp;page=1&amp;pullCount=1&amp;q=transmission&amp;starCount=0">Searching for transmission on docker hub</a>, I didn't want the vpn one, I'm not pirating movies and my ISP doesn't do stupid filtering/shaping tricks on torrents. I chose the next most popular: <a href="https://hub.docker.com/r/linuxserver/transmission/">https://hub.docker.com/r/linuxserver/transmission/</a></p>
<p>To install and run it:</p>
<pre>$ sudo -i
# useradd -r -s /sbin/nologin transmission
# id transmission
id=999(transmission) gid=999(transmission) groups=999(transmission)
# cd /var
# mkdir transmission
# cd transmission
# mkdir config downloads watch
# chown transmission:transmission .
# docker create --name=transmission \
  -v /var/transmission/config/:/config \
  -v /var/transmission/downloads/:/downloads \
  -v /var/transmission/watch/:/watch \
  -e PGID=999 -e PUID=999 -e TZ="Europe/London" \
  -p 9091:9091 -p 51413:51413 -p 51413:51413/udp \
  linuxserver/transmission
# docker start transmission
# docker logs -f transmission</pre>
<p>useradd ref: <a href="http://askubuntu.com/questions/29359/how-to-add-user-without-home">http://askubuntu.com/questions/29359/how-to-add-user-without-home</a></p>
<p>Once that was done I could see the transmission web UI at http://dom1vm:9091/. Hurrah.</p>
<h2>syncthing</h2>
<p><a href="https://store.docker.com/community/images/linuxserver/syncthing">https://store.docker.com/community/images/linuxserver/syncthing</a></p>
<p>Same deal with folders and users, then:</p>
<p><code># docker create --name=syncthing -v /var/syncthing/config/:/config -v /var/syncthing/data/:/data -e PGID=998 -e PUID=998 -p 8384:8384 -p 22000:22000 -p 21027:21027/udp linuxserver/syncthing</code></p>
<h2>Start on boot</h2>
<pre>docker update --restart=unless-stopped transmission 
docker update --restart=unless-stopped syncthing</pre>
<p><a href="http://stackoverflow.com/a/37479753/10245">http://stackoverflow.com/a/37479753/10245</a></p>
<h2>Todo</h2>
<ul>
<li><a href="https://nextcloud.com/">nextcloud</a> - has an iOS app that syncthing doesn't yet, might also have better selective sync
<ul>
<li>https://store.docker.com/community/images/wonderfall/nextcloud</li>
</ul>
</li>
<li>plex server
<ul>
<li>https://www.plex.tv/</li>
</ul>
</li>
</ul>
<h2>Further reading</h2>
<ul>
<li>https://forum.level1techs.com/t/dexter-kanes-ultra-paranoid-encrypted-nas-completed/98340</li>
</ul>
