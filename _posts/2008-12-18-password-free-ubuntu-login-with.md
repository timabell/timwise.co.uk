---
layout: post
title: password-free ubuntu login with facebrowser
date: '2008-12-18T21:27:00.002Z'
author: Tim Abell
tags:
- howto
- ubuntu
- linux
modified_time: '2009-04-04T00:31:35.019Z'
blogger_id: tag:blogger.com,1999:blog-5082828566240519947.post-7416804086430204798
blogger_orig_url: https://timwise.blogspot.com/2008/12/password-free-ubuntu-login-with.html
---

If you trust everyone who has physical access to a pc (if not then you are encrypting your files, right?) then there seems little point in having to type a password just because more than one user uses the pc.<br /><br />So here's how to log in from the gdm "face browser" with a single click.<br />Instructions tested with Ubuntu 8.04 Hardy Heron and 8.10 Intrepid Ibex.<br /><br /><br />as root, create a new file containing the usernames of all the users you want be able to log in through gdm without entering a password:<br /><code><br />sudo -i<br />echo 'username' &gt;&gt; /etc/gdm/nopassusers<br /></code><br />now still as root modify the pam settings for gdm to check this file and allow this user in based on being in the list:<br />vi&nbsp; /etc/pam.d/gdm<br /><code><br />vi /etc/pam.d/gdm<br /></code><br />and modify to contain the new listfile item<br /><code><br />#%PAM-1.0<br />auth    requisite       pam_nologin.so<br />auth    required        pam_env.so readenv=1<br />auth    required        pam_env.so readenv=1 envfile=/etc/default/locale<br /><strong>auth    sufficient      pam_listfile.so item=user sense=allow file=/etc/gdm/nopassusers onerr=fail</strong>  #add this line<br />@include common-auth<br />auth    optional        pam_gnome_keyring.so<br />@include common-account<br />session required        pam_limits.so<br />@include common-session<br />session optional        pam_gnome_keyring.so auto_start<br />@include common-password<br /></code><br />now simply restart gdm (or the whole machine) and try your new one-click login<br /><code><br />/etc/init.d/gdm restart<br /></code><br /><br /><br />Notes:<br />This means the keyring isn't unlocked, so you may have to type in your password anyway before your wireless connects.<br /><br /><br />references:<br /><a href="http://mirror.hamakor.org.il/archives/linux-il/05-2004/10149.html">http://mirror.hamakor.org.il/archives/linux-il/05-2004/10149.html</a><br /><a href="http://www.kernel.org/pub/linux/libs/pam/Linux-PAM-html/sag-pam_listfile.html">http://www.kernel.org/pub/linux/libs/pam/Linux-PAM-html/sag-pam_listfile.html</a>