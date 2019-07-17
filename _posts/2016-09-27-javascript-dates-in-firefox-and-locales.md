---
layout: post
title: javascript dates in firefox and locales
date: '2016-09-27T07:31:00.002Z'
author: Tim Abell
tags: 
modified_time: '2016-09-28T07:44:06.085Z'
blogger_id: tag:blogger.com,1999:blog-5082828566240519947.post-1701800026635188050
blogger_orig_url: https://timwise.blogspot.com/2016/09/javascript-dates-in-firefox-and-locales.html
---

Today I learnt:<br /><br />You actually have to reinstall firefox using a different download to get `new Date(dateString)` to use a different date format (i.e. non-US).<br /><br /><a href="https://jqueryvalidation.org/date-method/">https://jqueryvalidation.org/date-method/</a><br /><br /><blockquote class="tr_bq">This method should not be used, since it relies on the <code>new Date</code> constructor, which behaves very differently across browsers and locales. Use <code>dateISO</code> instead or one of the locale specific methods (in localizations/ and additional-methods.js).</blockquote><br />So if you're using chocolatey or boxstarter like I am (<a href="https://gist.github.com/timabell/608fb680bfc920f372ac" target="_blank">my boxstarter script</a>) you need to add the locale flag: <a href="https://chocolatey.org/packages/firefox">https://chocolatey.org/packages/firefox</a><br /><br /><code>choco install Firefox -packageParameters "l=en-GB"</code>.<br /><br />Reinstalling the package with --force is sufficient to change it.<br /><br />It would seem chrome has no way change the format from en-US.<br /><br />To be clear the correct solution is to do as the documentation says and not use that method, however it's a bit mean having a pitfall like that in the API. And sometimes you just have to work with the code you have...