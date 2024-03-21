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

So let's take a step back for a moment. Why do we write tests at all, what is the big goal that makes this all worthwhile. There's long been discussions of the "cost/benefit" of tests, and there is academic research that shows [teams that write tests are more productive](https://en.wikipedia.org/wiki/Test-driven_development#Benefits). 

To put it simply, the goal of writing any software is working software for users and businesses; and they aren't going to be too happy when something that worked fine on Monday is now broken on Tuesday. I don't think it's news to anyone that the goal of software tests is to prevent regressions. But there are two pieces that this does't explain:

1. The more working features you add, the more you need every single feature and a quality automated test. When you add your 1st feature it's easy to do do a quick manual check and verify it's behaving. When you write your 99th feature, are you actually going to sit and check the other 98 again? Do you even have the time?
2. What matters is not whether your class has a unit test, but whether the software as perceived by the user / business still does the job they wanted it to do.

# Outside-in testing

# Business Driven Development (BDD)

Oh dear that went off the rails as a concept. I see so many teams entirely miss the point of this movement, which is conceptually a good thing, but: IT'S NOT ABOUT GHERKIN SYNTAX. IT'S NOT ABOUT BROWSER AUTOMATION. It's about writing down what the users expect of your software, in terms they'd understand, and making sure that those expectations are never broken unintentionally.

BDD ends up using gherkin and browser automation because gherkin allows plain english explanations that can be turned into executable tests, and users often interact with software via a browser these days. They are tools for achieving BDD, not the definition of BDD.

# QA Teams

Just don't. Developers write better software if they have to write their own tests. Sure provide some outside expertise in performance testing tools etc for your devs, but they build it they run it.
