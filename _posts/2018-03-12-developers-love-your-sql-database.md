---
layout: post
title: Developers, Love Your SQL Database
date: 2018-03-12 19:30:15.000000000 +00:00
type: post
parent_id: '0'
published: true
password: ''
status: publish
categories: []
tags: []
meta:
  _wpcom_is_markdown: '1'
  _rest_api_published: '1'
  _rest_api_client_id: "-1"
  _publicize_job_id: '15656264083'
  timeline_notification: '1520883016'
author:
  login: timabell
  email: tim@timwise.co.uk
  display_name: timabell
  first_name: ''
  last_name: ''
permalink: "/2018/03/12/developers-love-your-sql-database/"
---
<p>Developers, don't be afraid of your SQL database, don't try and ignore it, try and make it the best it can be just like you do for your code.</p>
<h2>What's wrong today</h2>
<p>I've noticed that a lot of projects that have SQL databases don't apply the high standards that they have for their codebase (refactoring, clean code, documentation, etc.) to the SQL part of their projects.</p>
<p>Dealing with relational databases is harder than code:</p>
<ul>
<li>The tooling that I see teams using to manage their relational databases is crap.</li>
<li>Having to handle live data makes refactoring harder (but not impossible).</li>
<li>SQL is a language from the stone-age of software.</li>
</ul>
<p>But that's no excuse for not doing the best you can for the problem at hand.</p>
<h2>There are answers to these problems</h2>
<p>Some of the answer is just accepting that it's harder and learning to be effective. For example I find <a href="https://marketplace.visualstudio.com/items?itemName=JaredParMSFT.VsVim" target="_blank" rel="noopener">VsVim</a> and <a href="https://www.red-gate.com/products/sql-development/sql-prompt/" target="_blank" rel="noopener">SQL Prompt</a> to be great for editing SQL.</p>
<p><a href="https://www.red-gate.com/" target="_blank" rel="noopener">Redgate</a> have a great suite of tools for managing the full lifecycle of a database. Use them. I particularly like the way <a href="https://www.red-gate.com/products/sql-development/readyroll/" target="_blank" rel="noopener">ReadyRoll</a> handles migrations. RedGate tooling has excellent <a href="https://octopus.com/blog/database-deployments-with-octopus-and-redgate-sql-release" target="_blank" rel="noopener">integrations with Octopus deploy</a>.</p>
<p>So if you're in the situation I've seen with a database you virtually can't change and nothing but a visual studio database project in place that may or may not be in place with production, then try the following:</p>
<ol>
<li>Throw away the database project.</li>
<li>Set up ReadyRoll in your visual studio project.</li>
<li>Grab your production schema, and use that as a base in your ReadyRoll migrations. (It has a neat feature for a first "migration" that will only be run on a new database build, so it can build you a dev database from scratch, but it won't attempt to recreate production).</li>
<li>Configure ready-roll to use branch folders.</li>
<li>Start creating migrations in feature branches.</li>
<li>Set up CI / test / QA / pre-prod environments (or whatever you call them in your team) to drop and rebuild the database with every build. You can make this faster by using SQL Server snapshots.</li>
<li>Each environment then runs the database migrations that match the version of the codebase that was released to that environment.</li>
<li>Push changes up through the environments until those migration scripts have been run so many times you are no longer afraid to run them.</li>
</ol>
<p>Now you can refactor your database with confidence just like you can with the code, and it can stop being something you pretend isn't there and start being something you are proud to show off.</p>
<p>There are many potential complications, such as re-indexing tables with lots of data in production, but these are not things that an intelligent well-functioning DevOps team can't handle well once the basic process is in place.</p>
<h2>Further Reading</h2>
<ul>
<li><a href="https://gist.github.com/timabell/6fbd85431925b5724d2f" target="_blank" rel="noopener">https://gist.github.com/timabell/6fbd85431925b5724d2f</a> - source control your schema documentation (ms_description attributes)</li>
<li><a href="https://dba.stackexchange.com/q/515/33693" target="_blank" rel="noopener">https://dba.stackexchange.com/questions/515/how-do-you-document-your-databases</a></li>
</ul>
<hr />
<p>If you like this, you might appreciate the tool I'm working on to shed further light on the dark corners of your SQL database, check it out at <a href="http://schemaexplorer.io/?utm_source=blog.timwise&amp;utm_medium=web&amp;utm_campaign=love-db" target="_blank" rel="noopener">http://schemaexplorer.io/</a> and be sure to sign up to the waiting list.</p>
<p>&nbsp;</p>
