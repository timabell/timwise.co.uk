---
title: Always Add Argument Names
layout: post
---

An argument (lol) for the use of explicit argument names in C# function calls even when they seem redundant.

1. You can assert correctness when reviewing the call site in a dumb text display (e.g. a patch in a github pull request)
2. Parameter-order refactoring won't introduce subtle bugs and breaking changes.

This is particularly important when you have multiple arguments of the same type.

It's also a good idea when the call doesn't immediately make it obvious what the meaning of the parameter is. E.g. `Foo(3)` vs `Foo(sizeInMeters: 3)`.

## No argument names (bad)

Starting point:

```c#
void Main()
{
	Foo("Home", "Blah"); // don't do this
}

void Foo(string importantThing, string otherThing)
{
	switch (importantThing)
	{
		case "Home":
			DoSomething();
			break;
		default:
			DoSomethingElse();
			break;
	}
	Log(otherThing);
}
```

If `Foo()` is defined in a different file it's hard to eyeball `Main()` and tell if the arguments line up properly.

If I now re-order the arguments of `Foo()` can you easily spot that the call site in `Main()` is now incorrect?

```c#
void Main()
{
	Foo("Home", "Blah"); // Now broken!! But can you tell?
}

void Foo(string otherThing, string importantThing) // <-- parameters flipped
{
	switch (importantThing)
	{
		case "Home":
			DoSomething();
			break;
		default:
			DoSomethingElse();
			break;
	}
	Log(otherThing);
}
```

## With argument names (good)

Starting point:

```c#
void Main()
{
	Foo(importantThing: "Home", otherThing: "Blah");
}

void Foo(string importantThing, string otherThing)
{
	switch (importantThing)
	{
		case "Home":
			DoSomething();
			break;
		default:
			DoSomethingElse();
			break;
	}
	Log(otherThing);
}
```

You can now easily see that `"Home"` is going to `"importantThing"`, even in a plain-text view of the file.

If I now re-order the arguments of `Foo()` again, it *doesn't* break because the compiler knows which string to connect to which parameter. Win.

```c#
void Main()
{
	Foo(importantThing: "Home", otherThing: "Blah"); // still valid!

}

void Foo(string otherThing, string importantThing) // <-- refactored
{
	switch (importantThing)
	{
		case "Home":
			DoSomething();
			break;
		default:
			DoSomethingElse();
			break;
	}
	Log(otherThing);
}
```
