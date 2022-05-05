---
layout: post
title: Yet another good-commit-messages post
date: '2016-03-18T15:25:00.000Z'
blogger_orig_url: https://timwise.blogspot.com/2016/03/yet-another-good-commit-messages-post.html
---

## Why you should care about writing good commit messages

1.  It is extremely likely you won't be the last person to touch this code.
1.  You will forget the details of exactly why you did something after a few weeks/months/years. Be kind to your future self.
1.  Source control systems out-last [access to] ticket trackers by many years (Jira, Github-projects, Trello boards, etc. etc., how many have you seen in your time working on code? A lot more than you've seen source control systems I'll wager.) A link to a ticket is not enough. Copy the relevant context from the ticket into the commit message.
1.  Not everything can be deduced from the code. Even with excellent variable/function/class/module names, and beautiful refactoring, the circumstances that let to a particular design or change are lost. Good comments adding context help, but sometimes you don't want to clutter code with temporally relevant comments; the source control gives you a suitable place to keep this information locked up with your patch of the day.
1.  When someone wants to know if they can delete a line of code in the future, if they can't fathom why it was put there then the only way to find out is to delete it and see what breaks. By adding context in a commit message they can use the source-control history to get that context, and then decide whether that context is still applicable.
1. You might think your code is perfect and correct and needs no explanation beyond the code itself; but what if there's a bug? Now the only documentation is the buggy code. If I come to fix your code later how do I know what it was supposed to do without going back to first principles. What algorithm or design pattern were you trying to implement? What references did you use?

> "Write every commit message like the next person who reads it is an axe-wielding maniac who knows where you live" ~ unknown

## How to make them better

There's not much for me to add on what's already been written, so read these articles on the specifics of writing good commit messages.

* <https://vip.wordpress.com/documentation/commit-messages/>
* <https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message>
* <http://chris.beams.io/posts/git-commit/>
* <https://gds-way.cloudapps.digital/standards/git.html>
* <https://mislav.net/2014/02/hidden-documentation/>
* [Pull Request Etiquette gist by mikepea](https://gist.github.com/mikepea/863f63d6e37281e329f8) - covers pull request quality as well as individual commits

My personal additions to this list:

* A list of highlights of changes in bullets is often nice to add, think of it as a tourist's guide to your patch. It makes it easier to spot the key changes in a large diff, and can make code-reviews more effective.
* Hard-wrapping lines shouldn't be required, that should be an editor/display concern but unfortunately the git tooling doesn't agree so doesn't wrap anything so you might have to hard-wrap.
## Presentations on why good history matters

Remember, your code and your commits can last a veeeeeery long time and you never know what poor soul will have to understand what you did and why years later... when you have time watch this video:

## Examples of good

* <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f076ef44a44d02ed91543f820c14c2c7dff53716> ([via reddit](https://www.reddit.com/r/linux/comments/3y6st0/funny_commit_message_in_kernel/)) - what I like about this one is:
  * It adds **context** that you could never get from code (note some is repeatedly more briefly in code comments which is a good thing)
  * It explains the new behaviour **in human terms**.
  * It's easy to read (good quality English prose)
* <https://github.com/DFE-Digital/find-teacher-training/pull/159/commits/00e24dbc216836dd73281688491b8da355706d81> - what I like about this one is:
  * It's part of a PR that is also well described & reviewed
  * It adds context (about the thing that will call the endpoint added in the patch, i.e .the reason it was created)
  * It mentions a PR in another repo that was a source for some of the code & ideas, yet more context for answering the question "why was this done and why is it like this?"
  * The co-author is attributed (github shows this which is nice), this might give you someone to talk to about if they're still around
  * It provides an outline of the patch so you don't have to parse the whole diff to get a flavour of how the patch changes behaviour. When you have a lot of patches to read because you're looking for something in the history this can be a big timesaver.
  * It gives insight into why certain decisions were made about the final shape of the patch (e.g. why just /healthcheck and not /ping as well)

----

<iframe width="560" height="315" src="https://www.youtube.com/embed/1NoNTqank_U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/G45hqWNScvE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
