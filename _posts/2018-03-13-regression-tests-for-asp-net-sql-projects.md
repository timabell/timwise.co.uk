---
layout: post
title: Regression Tests for ASP.NET / SQL Projects
date: 2018-03-13 15:25:46.000000000 +00:00
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
  _publicize_job_id: '15685724070'
  timeline_notification: '1520954747'
author:
  login: timabell
  email: tim@timwise.co.uk
  display_name: timabell
  first_name: ''
  last_name: ''
permalink: "/2018/03/13/regression-tests-for-asp-net-sql-projects/"
---
<p>I've had the opportunity to attempt many variations of regression testing on many projects.</p>
<p>Many of the systems I've worked on have at least some level of workflow, meaning a user has to move through many steps as the system progresses something towards a final state.</p>
<p>As systems become more and more complex it becomes harder to not accidentally break an area of the system you weren't currently looking at and didn't re-test manually before shipping. Hence the search for the holy grail of the perfect regression test suite. It turns out that none of the approaches available (unit tests, UI drivers etc.) provide a single solution to the problem, and instead we have to use all these approaches in balance to give reasonable protection against regressions.</p>
<p>Here I lay out my current thinking on the best way to use testing to avoid regressions in a standard ASP.NET MVC + SQL Server project. I would like to introduce to you the idea of "business logic tests" which are an integration test suite starting below the UI layer, continuing through to a real database. I believe this gives an ideal balance of the trade-offs we have to make when choosing how to design out full regression test suite for a system.</p>
<h2>System layers</h2>
<p>The layers of such a system are ideally something like this:</p>
<ul>
<li>Database (largely just used for CRUD storage)</li>
<li>ORM - EF or similar library</li>
<li>Model - C# classes</li>
<li>Business logic layer - pure C# - (often missing in real projects, with business logic scattered across the other layers)</li>
<li>UI layer - Controller classes written in C#, views in razor .cshtml files, html, css, javascript etc.</li>
</ul>
<h2>Recommended test layers</h2>
<ul>
<li><strong>Unit tests</strong> - test small pieces of C# code</li>
<li><strong>Business logic tests</strong> - test the business logic layer down through to a real SQL Server database.</li>
<li><strong>UI Smoke tests</strong> - non-exhaustive test of a few common user journey's through, running against a real database, driven with Selenium Web Driver or similar.</li>
</ul>
<p>There should be only a few smoke tests, there should be many business logic tests covering all business functions that need to stay working, and finally developer discretion on the amount of unit testing to apply at the lowest level.</p>
<h2>What do the business logic tests look like?</h2>
<p>These could be pure code driven through something like NUnit, or they could be in business language through a BDD tool like specflow.</p>
<p>They depend on the business logic project but nothing above that (UI). They inject a real database connection as a dependency through whatever injection method you use.</p>
<p>These tests should make sense to the product owner / client.</p>
<p>This is the layer with the broadest coverage of all of the three styles in play. Every business use-case, workflow &amp; variation should be covered here. This is the suite that will alert you if any business or workflow rule is no longer being applied as designed, or if an obscure step of an obscure branch of your workflow has stopped working (perhaps due to an odd interaction with a database constraint).</p>
<h2>Handling the database</h2>
<p>SQL Sever has a very useful snapshot feature that means you can very rapidly roll back to a clean state after each test run. (<a href="https://gist.github.com/timabell/3164291#file-create-snapshot-sql" target="_blank" rel="noopener">Snapshot setup script</a>)</p>
<p>For each business logic test run:</p>
<ol>
<li><a href="https://gist.github.com/timabell/3164291#file-reset-to-snapshot-sql">Reset to the production snapshot</a> (or production equivalent build if you can't actually grab a production backup)</li>
<li>Run outstanding migrations for this version of the code (you are using <a href="https://documentation.red-gate.com/rr1/deployment/octopus-deploy" target="_blank" rel="noopener">Octopus + ReadyRoll</a> aren't you?)</li>
<li>Run the Business logic tests.</li>
</ol>
<h2>Why not test all the business functions through the UI?</h2>
<ul>
<li>UI tests are prone to reliability problems, you can end up with 98% pass rates being normal, so then you don't notice when a critical test fails.</li>
<li>UI tests are slow - this can add an extra overhead to developer productivity.</li>
<li>UI tests cause unwarranted resistance to change - once you have UI tests the UI becomes extremely hard to change, particularly for sweeping site-wide redesigns without spending a prohibitively long time fixing up the test suite. And you aren't fixing the test suite because you changed the logic, this is busywork.</li>
<li>The UI isn't sufficiently fragile to warrant this level of testing - when you are working on a page you are unlikely to break unrelated pages without realising.</li>
</ul>
<p>I have seen first-hand a team of excellent programmers get bogged down in problems with a full regression test suite driven entirely from the UI.</p>
<h2>Why not test all layers separately?</h2>
<p>In my experience a major point of fragility when a system is modified is the interaction between the code and the database. As such it's important that this fault-line is covered thoroughly by all regression tests that focus on business functions that need to remain functional.</p>
<p>A test suite that isolates the business logic layer from the database layer provides very little value, usually just fulfilling a "<em>though shalt unit test all classes</em>" declaration.</p>
<h2>How to get there</h2>
<p>If you don't have a solid business logic layer then you will need to refactor your way to that goal. This has other benefits for reliability beyond the ability to test. Clean code with an obvious layer for all the business logic is easier to modify and keep defect-free.</p>
<h2>Bonus - free test data</h2>
<p>The tests that you write to drive the business logic layer will be generating real data in a real copy of your database as it runs through the many steps in a workflow. You can use this test driver to generate useful test data for every step in a workflow, e.g. if a workflow had four steps you could do the following:</p>
<ol>
<li>Test account A - drive business logic to step 1</li>
<li>Test account B - drive business logic to step 2</li>
<li>Test account C - drive business logic to step 3</li>
<li>Test account D - drive business logic to step 4</li>
</ol>
<p>This is extremely quick to run, and now you have an account in every state of your workflow. This is useful for easily:</p>
<ul>
<li>Demoing your system from any starting point with multiple test accounts.</li>
<li>Having the data in the right state to do development work on state 4 without having to manually set it up.</li>
<li>Give your manual testers all the test accounts they need in many interesting states.</li>
<li>Testing out your reporting systems and anything else that consumes data from your database.</li>
</ul>
<p>Having realised you can do this, why would you ever do it manually again?</p>
<p>Because the code that generates this data is a core part of your regression test suite it will be maintained as part of normal development activities and so you'll never again have to deal with test data that no longer works with your latest version of the system.</p>
<hr />
<p>If you want me to help you get to this ideal then drop me a line - <a href="mailto:tim@timwise.co.uk">tim@timwise.co.uk</a></p>
