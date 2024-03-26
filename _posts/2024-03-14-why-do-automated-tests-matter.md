---
title: "Why do automated tests matter?"
layout: post
---

It might seem a bit odd to write a post on software tests after so many years and so much content, yet to this day I see well meaning developers writing software without adequate test coverage. In fact I will share that I myself have been _very_ late to enlightenment on this front. Sure I've been "writing tests" for well over a decade, but I was missing the mental framework that would make those efforts coherent, complete and effective. In my view the mental model of why we would write tests is more important than the detailed "how" of writing unit/integration tests, because without that it can only be at best haphazard whether the testing really serves its true purpose. I'll share with you here the keystone ideas that make it all sit together properly, just like the keystone in a stone archway.

![Photo: the shard through a brick archway](/images/blog/archway_IMG_20231109_135436.jpg)

# The before time - TDD unit testing

I started my career in software development way back in 2000 when only a few very forward thinking people were doing high quality automated testing, and it really hadn't reached the broader consciousness off the software development community.

Like a large number of software devs of that era, I became aware of "software testing" through the "TDD" movement (test-driven development). I believe a lot of the noise about this came out of the Ruby on Rails community (no coincidence since there's no compile step so there's more reliance on good tests in ruby/rails than in compiled languages). My experience of this was that it was largely talked about and taught as a bottom-up approach to testing:

1. "Here's how you write a unit test for a class."
2. "Here's how you do assertions."
3. "Here's why you should write the test before the code (red-green-refactor)."
4. And in C# land "here's how you do dependency injection".

This was also a time when SOLID was big in the OO consciousness, so classes, isolation, encapsulation and all the small pieces of the machine you were building was the focus, and testing those pieces was often enough to claim you were "doing testing". Interviews often being more about do you TDD than will your system break for end users.

"Integration Testing" (i.e testing more than one piece together) was certainly in my awareness, but mostly as a TDD++, and was usually missing any kind of coherent "why". You might test some code with a real database instead of a mocked persistence layer, or check that all your pure code classes didn't blow up when they were wired back together. In C# world a lot of mental overhead was created by trying to work out how to test code that used Microsoft's not very test-friendly .NET Framework standard library code that often lacked even interfaces to make it possible to swap out without writing a facade at great expense.

So I bumbled along, more or less successfully writing tests for my software, but always feeling like I didn't have a really solid argument for the big picture. For me it was mostly "aim for 100% test coverage" and you'll catch/prevent lots of bugs, plus it was good at driving software architecture in the minutia by preventing things being too coupled together.

More recently I've had the pleasure on working with people who are super-keen on "outside-in" testing and considerably less keen on acres of unit tests, and it finally dawned on me what I've been missing all these years.

# The "why" of testing

So let's take a step back for a moment. Why do we write tests at all, what is the big goal that makes this all worthwhile. There's long been discussions of the "cost/benefit" of tests, and there is research that shows [teams that write tests are more productive](https://en.wikipedia.org/wiki/Test-driven_development#Benefits). 

To put it simply, the goal of writing any software is working software for users and businesses; and they aren't going to be too happy when something that worked fine on Monday is now broken on Tuesday. I don't think it's news to anyone that the goal of software tests is to prevent regressions. But there are two pieces of the testing puzzle that this doesn't make explicitly clear:

1. When you add your first feature it's easy quickly check and verify it's behaving as desired. When, however, you write your _ninety-ninth_ feature how can you be _certain_ that the other ninety-eight features are all intact. The more working features you add, the more you need every single feature tested by a quality automated test.
2. What matters is not whether your class has a unit test, but whether the software as perceived by the user / business still does the job they wanted it to do.

Anyone who's written software for any length of time will laugh at the idea that "a change in component A has no possibility of breaking something unrelated in component B". Or as a more rigorous colleague pointed out, this is the problem of "emergence" in complex systems.

If you lack even a small amount test coverage (in quality or quantity) for your system, and you allow this to grow then you suffer from the two horse-riders of the testing apocalypse:

1. Manual testing efforts increase, sometimes heroically, sometimes in the insidious form of the separate "QA" role.
2. More regressions (aka bugs) make it to end users, resulting in unplanned and often pressurized work to fix them.

Some teams end up with more of one or the other problem. Without addressing the root-cause of lack of automated tests, the harder you push on one, the more you end up with of the other.

This is a subclass of the generalized "[technical debt](https://charmconsulting.co.uk/2020/11/27/leaders-guide-to-technical-debt/)" problem that results in a catastrophic drop-off of ability to delivery anything at all if it is allowed to grow.

# Mindset and Culture

In the end, it comes down to the core beliefs of your individual engineers writing the systems, and the teams they operate in.

If there is any part of them then that isn't 110% on-board with what I've written here, then test coverage ends up being haphazard and incomplete, and over time gets steadily worse.

## Hero culture



# Excuses

## "I don't have time"

## "The boss/client/manager won't let me"

The "should I do a good job" question, as I like to call it.

I often see all but the most experienced software engineers falling into the trap of assuming that the person they report to is sufficiently all-knowing to make any decision in any area.

# Outside-in testing

# Business Driven Development (BDD)

Oh dear that went off the rails as a concept. I see so many teams entirely miss the point of this movement, which is conceptually a good thing, but: IT'S NOT ABOUT GHERKIN SYNTAX. IT'S NOT ABOUT BROWSER AUTOMATION. It's about writing down what the users expect of your software, in terms they'd understand, and making sure that those expectations are never broken unintentionally.

BDD ends up using gherkin and browser automation because gherkin allows plain english explanations that can be turned into executable tests, and users often interact with software via a browser these days. They are tools for achieving BDD, not the definition of BDD.

## More

- https://thoughtbot.com/blog/testing-from-the-outsidein
- https://www.obeythetestinggoat.com/book/chapter_outside_in.html
