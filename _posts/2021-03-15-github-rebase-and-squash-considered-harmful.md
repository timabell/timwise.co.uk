---
title: GitHub rebase and squash considered harmful
layout: post
---

## Rebase and Squash: bad

(Not to be confused with local `git rebase` which is a whole other flamewar.)

Personally I dislike the "**rebase**" and "**squash**" buttons on GitHub because:

* GitHub generates brand new commits at the point of merge to mainline with no chance to review first.
* The generated commits lose the true commit metadata generated locally (authorship, timestamps, sha-1).
* They alter your original commit message to retro-fit PR numbers.
* There is no record of which commit you based your branch on, so if there's a new incompatibility because `main` has moved on you look like you just can't code.

## GitHub flow: good

My preferred workflow is to use the normal "merge" button every time. This is sometimes know as "[GitHub Flow](https://guides.github.com/introduction/flow/)".

In my view you should generate your commits, sha-1 and all, exactly as they will be merged into `main`, and then as a separate merge commit those should be combined into `main`.

To avoid many "tramlines" do local rebases to avoid PR branches being based on very outdated `main`.

* This retains the commit exactly as you crafted it locally.
* It calls out the difference between you writing your commit and deciding it can go into `main`.
* It retains the information about which commit you based your branch on.

There's something to be said for being able to do a `git log --first-parent origin/main` and get a consistent list of merged PR branches. It's really quite readbale compared to a mishmash of the different styles of merge to `main`.

You can configure GitHub to disallow the other options if your team are on-board with the idea.

You could argue that single commit PRs are a lot of overhead for something trivial, but equally having to decide each time results in more time worrying about whether something justifies the special treatment of ending up directly on main (in GitHub's modified form), and getting it wrong sometimes.

I'm aware there are counter-arguments, but in my experience on many teams this seems to end up being the cleanest balance of trade-offs. If you are an individual developer on your own project then pure mainline development can make more sense, though even then thinking of feature branches and having them explicitly merged where appropriate can neatly group related commits.
