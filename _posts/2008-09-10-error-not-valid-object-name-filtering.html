---
layout: post
title: error "Not a valid object name" filtering an ex-svn git repo with renames
date: '2008-09-10T14:18:00.007Z'
author: Tim Abell
tags:
- dev
- git
- troubleshooting
- svn
modified_time: '2008-09-11T09:27:31.215Z'
thumbnail: http://farm4.static.flickr.com/3085/2800643267_aa1dd46299_t.jpg
blogger_id: tag:blogger.com,1999:blog-5082828566240519947.post-2621355116425651592
blogger_orig_url: https://timwise.blogspot.com/2008/09/error-not-valid-object-name-filtering.html
---

<div style="float:right;margin:0 0 1em 1em;"><a href="http://www.flickr.com/photos/tim_abell/2800643267/in/set-72157606969432978/"><img style="border:none;" src="http://farm4.static.flickr.com/3085/2800643267_aa1dd46299_t.jpg" /></a></div>Under git version 1.5.4.3, which as of writing is the current in ubuntu 8.04 hardy heron, trying to split out a folder from a git repo where the repo was an import from subversion (svn), and the folder was renamed in the past causes a failure as show below:<br /><br /><code style="clear:both">#!/bin/bash -v<br />rm -rf test-case<br />mkdir test-case<br />cd test-case/<br />svnadmin create svnrepo<br />export repo="`pwd`/svnrepo"<br />mkdir -p import/a<br />echo '1' >> import/a/file.txt<br />svn import -m 'initial import' import file://$repo/trunk/<br />svn co file://$repo/trunk/ checkout<br />echo '2' >> checkout/a/file.txt<br />svn ci -m "file modified" checkout<br />svn mv -m "moving file" file://$repo/trunk/a file://$repo/trunk/b<br />svn up checkout<br />echo '3' >> checkout/b/file.txt<br />svn ci -m "modified again" checkout<br />svn log -v checkout<br />mkdir -p gitcopy/a<br />git svn clone file://$repo/trunk/ gitcopy/a<br />cd gitcopy/a<br /><strong>git filter-branch --subdirectory-filter a     #fails [1]</strong><br />cd ../../<br />mkdir gitcopy/b<br />git svn clone file://$repo/trunk/ gitcopy/b<br />cd gitcopy/b<br />git filter-branch --subdirectory-filter b</code><br /><br />The marked line above fails with the following error:<br />[1] Rewrite bcfe73ef303832b6112a2419dc1da5f782672c14 (3/3)fatal: Not a valid object name bcfe73ef303832b6112a2419dc1da5f782672c14:a<br /><br />This has been fixed in the latest build of git: version 1.6.0.1.294.gda06a and no longer fails.<br /><br />The "fatal: Not a git repository" error message that filter branch produces doesn't seem to matter.