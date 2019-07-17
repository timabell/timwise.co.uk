\--- layout: post title: Configuration confusion in visual studio date: '2012-07-10T14:43:00.001Z' author: Tim Abell tags: - gotcha - visual studio modified\_time: '2012-07-10T14:43:30.568Z' thumbnail: http://3.bp.blogspot.com/-IZ7sKsaxFrc/T\_w-r9usFUI/AAAAAAAAAGs/tjQwQOIVUnY/s72-c/visual-studio-platform-selection.PNG blogger\_id: tag:blogger.com,1999:blog-5082828566240519947.post-6546456780454569539 blogger\_orig\_url: https://timwise.blogspot.com/2012/07/configuration-confusion-in-visual.html --- Here's a gotcha that got me.  
  
It is not immediately obvious, but visual studio stores in it's sln file a set of project configuration selections for every combination of solution configuration and solution platform.  
  

[![](http://3.bp.blogspot.com/-IZ7sKsaxFrc/T_w-r9usFUI/AAAAAAAAAGs/tjQwQOIVUnY/s320/visual-studio-platform-selection.PNG)](http://3.bp.blogspot.com/-IZ7sKsaxFrc/T_w-r9usFUI/AAAAAAAAAGs/tjQwQOIVUnY/s1600/visual-studio-platform-selection.PNG)

  
The gotcha is that by default Visual Studio (all versions 2008-2012 as far as I know) only show one half of that combination in the standard toolbar, so you can get in a situation where one of your developers is building something completely different to everyone else as somehow the platform has silently been changed.  
  
I recommend you add Platform to your toolbar so that you can _always_ see what you are about to build.  
  

[![](http://3.bp.blogspot.com/-oyMd-kmXi8E/T_w-sTwlSvI/AAAAAAAAAG0/5bx4-MMc84M/s320/visual-studio-platform-toolbar.PNG)](http://3.bp.blogspot.com/-oyMd-kmXi8E/T_w-sTwlSvI/AAAAAAAAAG0/5bx4-MMc84M/s1600/visual-studio-platform-toolbar.PNG)

  
  

[![](http://3.bp.blogspot.com/-syeHX6qxTrw/T_w-rTN45aI/AAAAAAAAAGo/jYrcbUis7gk/s320/visual-studio-platform-command.PNG)](http://3.bp.blogspot.com/-syeHX6qxTrw/T_w-rTN45aI/AAAAAAAAAGo/jYrcbUis7gk/s1600/visual-studio-platform-command.PNG)

  
And if possible, remove any unused platform configurations from your solution entirely.