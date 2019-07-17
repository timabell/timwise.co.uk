---
layout: post
title: automatic mysql backups
date: '2012-06-14T15:10:00.000Z'
author: Tim Abell
tags:
- howto
- mysql
- linux
modified_time: '2012-06-14T15:12:25.991Z'
blogger_id: tag:blogger.com,1999:blog-5082828566240519947.post-7356368576752162435
blogger_orig_url: https://timwise.blogspot.com/2012/06/automatic-mysql-backups.html
---

On a debian server with mediawiki installed and running with a local mysql.<br /><br /><code>root@myserver:~# apt-get install automysqlbackup<br /><br />root@myserver:~# crontab -e<br /><br /># m &nbsp;h &nbsp;dom mon dow &nbsp; command<br />&nbsp; 5 &nbsp;4 &nbsp;* &nbsp; * &nbsp; * &nbsp; &nbsp; automysqlbackup<br /><br /> <br />root@myserver:~#&nbsp;automysqlbackup<br />root@myserver:~#&nbsp;cd /var/lib/automysqlbackup/<br />root@myserver:/var/lib/automysqlbackup# find .<br />.<br />./weekly<br />./weekly/wikidb<br />./weekly/information_schema<br />./daily<br />./daily/wikidb<br />./daily/wikidb/wikidb_2012-06-14_16h03m.Thursday.sql.gz<br />./daily/information_schema<br />./daily/information_schema/information_schema_2012-06-14_16h03m.Thursday.sql.gz<br />./monthly</code><br /><br />Result! No longer need to write a custom cron script each time.<br /><br /><div class="separator" style="clear: both; text-align: center;"><a href="http://www.flickr.com/photos/tim_abell/7255107648/"><img border="0" src="http://farm8.staticflickr.com/7226/7255107648_929530d9e0_n.jpg" /></a></div><br />Project homepage:&nbsp;<a href="http://sourceforge.net/projects/automysqlbackup/">http://sourceforge.net/projects/automysqlbackup/</a><br /><br />