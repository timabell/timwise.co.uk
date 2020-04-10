---
title: Should you rebase or merge to update feature branches in git?
layout: post
---

You have a "feature branch" in git that you've been working on for a while but now
`master` has moved on.

You need to bring your feature branch up to date with with master to flush
out any incompatibilities and deal with any merge conflicts..

You have two common choices:

* **Merge** `origin/master` into your branch.
* **Rebase** your branch onto `origin/master` and force-push.

# TLDR

Try rebase, if it dissolves into conflict resolution hell give up and merge
master into your branch and move on.

# The trade-offs

A blanket rule here either for merge or rebase is unhelpful because there are
trade-offs to be made that vary depending on the specific circumstances. (Isn't
that always the answer with git?!)

## Merge

```
git fetch
git merge origin/master
git push
```

### Merge - the good

* Reliable no-brainer that anyone can follow by rote
* Resolve conflicts only once
* Accurate representation of what happened over time
* Avoids retrospectively [introducing bugs and test failures into commits that
  used to be
valid](https://medium.com/@fredrikmorken/why-you-should-stop-using-git-rebase-5552bee4fed1)
* Avoids re-writing previously shared branch, which can confuse less
  experienced git users if they are working with you on the branch

### Merge - the bad

* Multiple of these makes it harder to then go back and clean your branch's
  commits with a `git rebase --interactive`
* Tends to generate [wide tramlines in the commit
  history](https://hackernoon.com/git-merge-vs-rebase-whats-the-diff-76413c117333)
	that can be very hard to follow  when looking back to find out when/why
	something was done. (mitigated by `git log --first-parent`, until
	you need to dig into a branch)

## Rebase

```
git fetch
git rebase origin/master
git push --force-with-lease
```

### Rebase - the good

* Avoids tramlines generated by long-lived feature branches
* Can result in having to fix the same merge conflict for every commit in your
  branch
* Makes resultant history in `master` much easier to follow
* Reflects the intention more clearly of "merge these commits into master" as
  opposed to "here's how I flailed my way to a working thing"
* Could in somewhat rare circumstances retrospectively [introduce bugs and test
  failures into commits that used to be
valid](https://medium.com/@fredrikmorken/why-you-should-stop-using-git-rebase-5552bee4fed1)

### Rebase - the bad

* Can confuse less experienced git users if they are working with you on the
  branch (the answer is usually for them to run `git pull --rebase`)
* Loses chronological order of creation of code (personally I think this is
  less important than a series of clean intentional patches to be applied to
	the codebase when merged to `master`)

# Heuristics to use

Try rebase, if it dissolves into conflict resolution hell give up and merge
master into your branch and move on.

This is my preferred approach up until the point the rebase becomes too costly
to fix up due to conflicts with  `master` or I become aware of an
incompatibility with `master` that changes the meaning of the previous commits
and needs serious work to resolve in a merge commit.

You *can* usually make a difficult rebase work, and I've hunkered down and
tackled probably more than I should have in the name of perfect history graphs.
The problem is if you are doing this for business and not just for fun then
there is a major time cost for only a marginal benefit.

### A note for the brave and foolish on hard rebases

You can battle on and make your rebase work, fixing conflicts carefully for
every commit as they cascade from one to the next If you do decide to battle
through a nasty rebase then my tip is not to jump to the answer when fixing
each commit, as that guarantees the next commit won't apply, instead make each
commit apply with its original meaning and nothing more. It's worth remembering
that each commit on your branch that describes how to change the source code
from a before to an after state, and if you change the before state then the
patch no longer applies.

# How to avoid the pain entirely

Pain around this topic is likely a symptom of not breaking down your stories /
pull requests / features into small enough chunks. On a fast moving team
`master` is very fluid and any large & long-running branches will be hard to
review and merge. Try to chip off smaller increments and ship those, maybe
using feature flags or hidden features (those with no visible way of getting to
them).

# More

In general merge vs rebase generates much debate, such as that found on
stackoverflow:
<https://stackoverflow.com/questions/804115/when-do-you-use-git-rebase-instead-of-git-merge>
but it is often lacking context.

There are many other articles on the merge/rebase topic such as
<https://derekgourlay.com/blog/git-when-to-merge-vs-when-to-rebase/> but I
couldn't see anything that matched my heuristic for tackling feature branch
updates so I wrote this one.