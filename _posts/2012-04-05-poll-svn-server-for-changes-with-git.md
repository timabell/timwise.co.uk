---
layout: post
title: Poll svn server for changes with git clone
date: '2012-04-05T15:45:00.006Z'
author: Tim Abell
tags:
- bash
- git
- svn
modified_time: '2012-04-10T18:49:19.544Z'
thumbnail: http://3.bp.blogspot.com/-gjo7YaLzSpI/T32-eIibreI/AAAAAAAAAEg/NE4QizgAB5U/s72-c/poll-svn_catch.png
blogger_id: tag:blogger.com,1999:blog-5082828566240519947.post-5257654522615465429
blogger_orig_url: https://timwise.blogspot.com/2012/04/poll-svn-server-for-changes-with-git.html
---

<div style="font-size: 16px; font-family: Georgia, serif; ">  
Just for convenience, paste this in a git bash window:</div>

    while true; do date; echo "Polling svn server..."; git svn fetch;echo "Sleeping."; sleep 300; done

<div><span>  
</span></div>

[![](http://3.bp.blogspot.com/-gjo7YaLzSpI/T32-eIibreI/AAAAAAAAAEg/NE4QizgAB5U/s400/poll-svn_catch.png)](http://3.bp.blogspot.com/-gjo7YaLzSpI/T32-eIibreI/AAAAAAAAAEg/NE4QizgAB5U/s1600/poll-svn_catch.png)

<div>Then just refresh your favourite git log viewer.  

Get the gist: [poll-svn.sh gist](https://gist.github.com/2353631)  
</div>

<div>That's all folks!</div>
