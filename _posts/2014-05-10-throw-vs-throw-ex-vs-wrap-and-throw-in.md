\--- layout: post title: throw vs throw ex vs wrap and throw in c-sharp date: '2014-05-10T10:23:00.000Z' author: Tim Abell tags: modified\_time: '2014-05-10T10:37:34.821Z' blogger\_id: tag:blogger.com,1999:blog-5082828566240519947.post-2291640492202610062 blogger\_orig\_url: https://timwise.blogspot.com/2014/05/throw-vs-throw-ex-vs-wrap-and-throw-in.html --- I've come across the throw vs throw ex 'debate' a few times, even as an interview question, and it's always bugged me because it's never something I've worried about in my own c# code.  
  
**background**  
  
So here's a typical example of the throw vs throw ex thing: [https://stackoverflow.com/questions/730250/is-there-a-difference-between-throw-and-throw-ex](https://stackoverflow.com/questions/730250/is-there-a-difference-between-throw-and-throw-ex)  
  
Basically it revolves around either messing up the line numbers in your stack trace (throw ex;) or losing an chunk of your stack entirely (throw;) - exception1 and 2 respectively in this nice clear answer [http://stackoverflow.com/a/776756/10245](http://stackoverflow.com/a/776756/10245)  
  

[![](https://farm8.staticflickr.com/7193/13910043519_39b8abfab9_n.jpg)](https://secure.flickr.com/photos/tim_abell/13910043519/)

  
**the third option**  
  
I've just figured out why.  
  
Because in my own code, whenever I catch and re-throw I _always_ wrap another exception to add more context before rethrowing, and this means you don't have either of the above problems. For example:  
  
private static void ThrowException3() {  
try {  
DivByZero(); // line 43  
} catch (Exception ex) {  
throw new Exception("doh", ex); // line 45  
}  
}  

  

Exception 3:

System.Exception: doh ---> System.DivideByZeroException: Division by zero

  at puke.DivByZero () \[0x00002\] in /home/tim/repo/puker/puke.cs:51 

  at puke.ThrowException3 () \[0x00000\] in /home/tim/repo/puker/puke.cs:43 

  --- End of inner exception stack trace ---

  at puke.ThrowException3 () \[0x0000b\] in /home/tim/repo/puker/puke.cs:45 

  at puke.Main (System.String\[\] args) \[0x00040\] in /home/tim/repo/puker/puke.cs:18 

  

Obviously 'doh' would be something meaningful about the state of that function ThrowException3 in the real world.

  
Full example with output at [https://gist.github.com/timabell/78610f588961bd0a0b95](https://gist.github.com/timabell/78610f588961bd0a0b95)  
  
This makes life much easier when tracking down bugs / state problems later on. Particularly if you string.format() the new message and add some useful state info.