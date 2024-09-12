---
title: "Why user stories should be shippable increments"
layout: post
---

Sometimes I see people create work items / jira tickets / user- stories that if they were implemented and merged in to the codebase would leave the system in a half-finished state, either broken or inconsistent.

This to me is instinctively a "bad thing", however as not everyone has grokked this important fundamental of team software delivery, I turned to chat gpt for an explanation of why I think this is important, and I have to say it did a stellar job of clearly explaining the things that I have absorbed over my decades of commercial software development. So here you go, here's why non-shippable tickets are a problem:

## 1. Incomplete Features Impact User Experience

A half-finished feature can confuse users or negatively impact their experience. If the feature is exposed to users before it's fully functional, it may appear broken, resulting in dissatisfaction or mistrust in the system's reliability.

## 2. Difficult to Test and Validate

Testing half-finished work is challenging, as it's not in a stable or coherent state. Quality Assurance (QA) teams need a fully functional piece of work to validate it against the requirements. When a ticket is only partially completed, it’s hard to determine if it meets the intended functionality or introduces bugs.

## 3. Complicates Future Development

Leaving an unfinished task can create dependencies and conflicts with future work. If another developer later works on a related feature, they might have to deal with the incomplete state, which could introduce confusion or lead to mistakes in integrating related functionality.

## 4. Increases Technical Debt

Incomplete features often accumulate as technical debt, which means extra work will be needed later to finish, refactor, or fix them. This can slow down future progress, as more time will need to be spent revisiting and cleaning up the half-finished work.

## 5. Blocks Related Development

A half-finished ticket can block progress on other features that depend on it. For example, if a partially completed feature introduces bugs or changes a shared system in an untested way, it could delay the development of other tickets or cause cascading issues across the system.

## 6. Reduces Team Efficiency

When a ticket is left in a half-finished state, developers may need to pick it up again later or pass it to another developer, leading to context-switching. This results in inefficiency, as time is wasted on re-clarifying the problem, re-understanding the code, and figuring out where the previous developer left off.

## 7. Unclear Ownership and Accountability

If a ticket is left unfinished, ownership and accountability become unclear. Other team members may not know who is responsible for completing it or what still needs to be done, which can cause confusion and reduce productivity.

## 8. Inconsistent System Behavior

Partial implementation can cause the system to behave inconsistently. For example, a feature that's half-completed might trigger errors, create discrepancies in data, or cause parts of the system to function incorrectly or unpredictably.

## 9. Hinders Deployment and Releases

Half-finished tickets often disrupt deployment cycles, as incomplete features cannot be included in production. This results in unnecessary delays or the need to work around unfinished tickets, making releases more complex and error-prone.

## 10. Wasted Effort and Resources

When a ticket is not fully completed, there's a risk that the work may be scrapped or need significant changes by the time it’s revisited. This can result in wasted development effort, resources, and time.

## 11. Unmet Stakeholder Expectations

Leaving a ticket incomplete prevents stakeholders from seeing tangible progress, undermining confidence in the team's ability to deliver. Stakeholders expect finished, usable deliverables that they can review and assess, not half-completed tasks that require further work.

## 12. Difficult to Manage in Agile Processes

In Agile and Scrum methodologies, the goal is to deliver shippable increments of work at the end of each sprint. Leaving a ticket half-finished breaks this cycle, making it hard to close sprints successfully and creating spillover tasks that carry into future iterations.

## In short

Avoiding half-finished tickets ensures that the system remains stable, progress is clear, and each ticket represents a functional, complete deliverable. This promotes better workflow, higher quality, and more reliable software.
