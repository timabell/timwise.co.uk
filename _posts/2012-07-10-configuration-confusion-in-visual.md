---
layout: post
title: Configuration confusion in visual studio
date: '2012-07-10T14:43:00.001Z'
author: Tim Abell
tags:
- gotcha
- visual studio
modified_time: '2012-07-10T14:43:30.568Z'
thumbnail: http://3.bp.blogspot.com/-IZ7sKsaxFrc/T_w-r9usFUI/AAAAAAAAAGs/tjQwQOIVUnY/s72-c/visual-studio-platform-selection.PNG
blogger_id: tag:blogger.com,1999:blog-5082828566240519947.post-6546456780454569539
blogger_orig_url: https://timwise.blogspot.com/2012/07/configuration-confusion-in-visual.html
---

Here's a gotcha that got me.<br /><br />It is not immediately obvious, but visual studio stores in it's sln file a set of project configuration selections for every combination of solution configuration and solution platform.<br /><br /><div class="separator" style="clear: both; text-align: center;"><a href="http://3.bp.blogspot.com/-IZ7sKsaxFrc/T_w-r9usFUI/AAAAAAAAAGs/tjQwQOIVUnY/s1600/visual-studio-platform-selection.PNG" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="201" src="http://3.bp.blogspot.com/-IZ7sKsaxFrc/T_w-r9usFUI/AAAAAAAAAGs/tjQwQOIVUnY/s320/visual-studio-platform-selection.PNG" width="320" /></a></div><br />The gotcha is that by default Visual Studio (all versions 2008-2012 as far as I know) only show one half of that combination in the standard toolbar, so you can get in a situation where one of your developers is building something completely different to everyone else as somehow the platform has silently been changed.<br /><br />I recommend you add Platform to your toolbar so that you can <i>always</i> see what you are about to build.<br /><br /><div class="separator" style="clear: both; text-align: center;"><a href="http://3.bp.blogspot.com/-oyMd-kmXi8E/T_w-sTwlSvI/AAAAAAAAAG0/5bx4-MMc84M/s1600/visual-studio-platform-toolbar.PNG" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="320" src="http://3.bp.blogspot.com/-oyMd-kmXi8E/T_w-sTwlSvI/AAAAAAAAAG0/5bx4-MMc84M/s320/visual-studio-platform-toolbar.PNG" width="311" /></a></div><br /><br /><div class="separator" style="clear: both; text-align: center;"><a href="http://3.bp.blogspot.com/-syeHX6qxTrw/T_w-rTN45aI/AAAAAAAAAGo/jYrcbUis7gk/s1600/visual-studio-platform-command.PNG" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="202" src="http://3.bp.blogspot.com/-syeHX6qxTrw/T_w-rTN45aI/AAAAAAAAAGo/jYrcbUis7gk/s320/visual-studio-platform-command.PNG" width="320" /></a></div><br />And if possible, remove any unused platform configurations from your solution entirely.