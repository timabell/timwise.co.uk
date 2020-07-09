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
> ~ [Desmond Tutu (via Psychology today of all places!)](https://www.psychologytoday.com/us/blog/mindfully-present-fully-alive/201804/the-only-way-eat-elephant)

Which to me means iterate your way to good.

It doesn't mean have no plan, in fact you should know where you are trying to get to and how realistic that is so you don't end up with a rewrite that can never be completed because it was too ambitious.

## Even more reading

### Is a mess a debt?

> "A mess is not a technical debt. A mess is just a mess."
>
> ~ Uncle Bob

[A Mess is not a Technical Debt by Uncle Bob](https://sites.google.com/site/unclebobconsultingllc/a-mess-is-not-a-technical-debt) suggests that the use of the term debt is for a considered short term trade-off just like taking out a loan, but a mess is nothing of the sort as there is no up-side to creating a mess versus having a clean but temporary solution to a problem.

### More taxonomy of bad code: the Reckless/Prudent vs Deliberate/Indavertent quadrant

Martin Fowler shows that you can categorize debt by whether it is reckless or prudent, and separately whether it was deliberately or inadvertently added to the code.

> "Technical Debt is a metaphor, so the real question is whether or not the debt metaphor is helpful about thinking about how to deal with design problems, and how to communicate that thinking. A particular benefit of the debt metaphor is that it's very handy for communicating to non-technical people."
>
> "The useful distinction isn't between debt or non-debt, but between prudent and reckless debt ... there's also a difference between deliberate and inadvertent debt."
>
> "The decision of paying the interest versus paying down the principal still applies, so the metaphor is still helpful for this case."
>
> ~ [The Technical Debt Quadrant by Martin Fowler](https://martinfowler.com/bliki/TechnicalDebtQuadrant.html)

It's well worth reading a lot more of Martin Fowler's writing, there's so much to learn about programming good practice, written in a very human and accessible style.

## Thanks, now I'm even less sure what to do

Are you wrestling with something you don't like in a codebase you have to deal with? I'm guessing that's why you're here. Or maybe someone sent you this along with a rant about the tech debt in the codebase you own.

Either way, I suggest slowing down a bit, sitting down together (while maintaining social distancing), and considering how all the things that bother you about the code in front of you fit in to the various taxonomies detailed above. Then use that assessement to make a calm and rational plan about roughly where you want to get to. Then decide on the *one* next thing you will do towards that. Use the Ron Jeffries approach to get you there without wasting time on things that don't really matter.

Practically, that might mean if you have a user story, ticket or trello card for a feature, it might take longer to do as you include the work to "pay down" some of that badness along the way, knowing that it will improve your overall velocity over time. Be wary of pulling out separate "debt" stories to do, though that can work if the team dynamic is right.

To keep your stress levels down make it a shared team problem, have a bit of a laugh about it, take regular breaks in the great outdoors, and support each other.

Good luck!
