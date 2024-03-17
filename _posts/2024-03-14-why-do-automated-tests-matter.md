---
title: "Why do automated tests matter?"
layout: post
---

It might seem a bit odd to write a post on software tests after so many years and so much content, yet to this day I see well meaning developers every day writing software without adequate test coverage. In fact I will share that I myself have been _very_ late to enlightenment on this front.

# The before time - TDD unit testing

I started my career in software development way back in 2000 when only a few very forward thinking people were doing high quality automated testing, and it really hadn't reached the broader consciousness off the software development community.

Like a large number of software devs of that era, I became aware of "software testing" through the "TDD" movement (test-driven development). I believe a lot of the noise about this came out of the Ruby on Rails community (no coincidence since there's no compile step so more reliance on tests in ruby/rails). My experience of this was that it was largely talked about and taught as a bottom-up approach to testing:

1. Here's how you write a unit test for a class
2. Here's how you do assertions
3. Here's why you should write the test before the code (red-green-refactor).

This was also a time when SOLID was big in the OO consciousness, so classes, isolation, encapsulation and all the small pieces of the machine you were building was the focus..

"Integration Testing" (i.e testing more than one piece together) was certainly in my awareness, but mostly as a TDD++, and was usually missing any kind of coherent "why".

So I bumbled along, more or less successfully writing tests for my software, but always feeling like I didn't have a really solid argument for the big picture. For me it was mostly aim for 100% test coverage and you'll catch/prevent lots of bugs, plus it was good at driving software architecture in the minutia by preventing things being too coupled together.

More recently I've had the pleasure on working with people who are super-keen on "outside-in" testing, and it finally dawned on me what I've been missing all these years.

# The "why" of testing

So let's take a step back for a moment. Why do we write tests at all, what is the big goal that makes this all worthwhile. There's long been discussions of the "cost/benefit" of tests, and there is academic research that shows [teams that write tests are more productive](https://en.wikipedia.org/wiki/Test-driven_development#Benefits). 


# Outside-in testing


