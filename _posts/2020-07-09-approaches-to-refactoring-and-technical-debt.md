---
title: Approaches to refactoring and technical debt
layout: post
---

Sometimes a codebase has an overwhelming amount of "terrible" stuff that as a developer you almost can't help but just diving in and fixing it. Doing this without thinking too hard can result in many variations of failure, such as:

* Upsetting the people paying your wage while you do something they don't consider important.
* Never finishing the mammoth rewrite you took on, resulting in a mess of two different styles of code.
* Personal burnout.
* Fixing things that maybe weren't actually that important even if they make you cry.

## Must-read articles

Here's a couple of must-read articles on the subject:

### Refactoring


> "We take the next feature that we are asked to build, and instead of detouring around all the weeds and bushes, we take the time to clear a path through some of them."
>
> ~ Ron Jeffries

In short, don't make debt cleanup its own task, just tackle what gets in your way as you go, and leave the camp tidier than you found it.

I recommend reading the whole article here: [Refactoring -- Not on the backlog! by Ron Jeffries](https://ronjeffries.com/xprog/articles/refactoring-not-on-the-backlog/), it's not too long.

### Technical Debt

> "Tech debt": an overloaded term. There are at least 5 distinct things we mean we say “technical debt”.
>
> 1. Maintenance work
> 2. Features of the codebase that resist change
> 3. Operability choices that resist change
> 4. Code choices that suck the will to live
> 5. Dependencies that resist upgrading

Read the full explanation of each type of debt here: [Towards an understanding of technical debt by Kellan Elliott-McCrea](http://laughingmeme.org/2016/01/10/towards-an-understanding-of-technical-debt/), a bit longer but an important piece of writing.

## Huge piles of debt

If your project is sooo "bad" that you feel like throwing it out, you might do well to heed this quote:

> "There is only one way to eat an elephant: a bite at a time."
>
> ~ Desmond Tutu
> <https://www.psychologytoday.com/us/blog/mindfully-present-fully-alive/201804/the-only-way-eat-elephant>

Which to me means iterate your way to good.

It doesn't mean have no plan, in fact you should know where you are trying to get to and how realistic that is so you don't end up with a rewrite that can never be completed because it was too ambitious.

