---
layout: post
title: Setting up a static website/blog with jekyll
categories: [howto,backstage]
---

A couple of people asked me for more info on my new blog setup here's a rough
outline of what's involved in setup and posting. There are *many* ways of doing
this, this is just the way that suited me best for now.

What you need to follow along:

* A domain from [GoDaddy](https://uk.godaddy.com/)
* An account on [GitHub](https://github.com/)


# Things I like about this setup

* Built-in backups,
* offline editing,
* no shonkey web gui,
* no charge for hosting with custom domain and https,
* simple dev friendly templating,
* a nice simple code-friendly mobile-friendly design,
* full control.

# Why jeykll fits that

A blog post like this one is just a text file in a special format called
markdown. These can then be trivially source-controlled with git, which serves
as version control and distributed backup in one neat package. I use git for
work so although it's not the easiest tool to use that's not a problem for me.
Theoretically if you don't know git you could probably just do all your editing
in the github web interface these days.

Here's the *entire* folder structure of this blog as it stands right now. You
can see there's really not a lot too it.

```
tim@fox:~/repo/timwise.co.uk(master)
$ tree
.
├── 404.md
├── about.md
├── categories.md
├── CNAME
├── _config.yml
├── _drafts
│   └── 2019-06-24-setting-up-a-jekyll-blog.md
├── favicon.ico
├── fonts
│   ├── aramisi.ttf
│   ├── EBGaramond-Regular.ttf
│   └── FuturaPTLight.otf
├── images
│   ├── 404.jpg
│   ├── reverie-demo.png
│   ├── reverie.png
│   └── reverie-text.png
├── _includes
│   ├── analytics.html
│   ├── disqus.html
│   ├── meta.html
│   └── svg-icons.html
├── index.html
├── _layouts
│   ├── default.html
│   ├── page.html
│   └── post.html
├── LICENSE
├── _posts
│   └── 2019-06-21-yet-another-new-blog.md
├── _sass
│   ├── _darcula.scss
│   ├── _highlights.scss
│   ├── _reset.scss
│   ├── _svg-icons.scss
│   └── _variables.scss
└── style.scss

7 directories, 30 files
```

The posts are just text files using the markdown format with a `.md` file extension instead of `.txt` and a short header for information like page title and tags. Here's the top of this one:

```
---
layout: post
title: Setting up a static website/blog with jekyll
categories: [howto,backstage]
---

A couple of people asked me for more info on my new blog setup here's a rough
outline of what's involved in setup and posting. There are *many* ways of doing
this, this is just the way that suited me best for now.

```

# How I set it up

I actually am reconfiguring from another setup, and used some advanced
sillyness, but I'll simplify that here down to roughly the steps you'd need to
go from cold as I'm sure that's more interesting to you.

1. Buy a domain from GoDaddy
1. Create a GitHub account
1. [Find a jekyll
   theme](https://duckduckgo.com/?q=jekyll+themes&t=lm&ia=we://duckduckgo.com/?q=jekyll+themes&t=lm&ia=web)
   on become a base for your new site (the themes vary on how ready they are
   for you to just crack on). Here's [the reverie
   theme](https://github.com/amitmerchant1990/reverie) that I used with minimal
   customisation.
1. Go into the settings for your repo, ![enabling github pages by choosing a
   branch](/images/blog/jekyll-setup/github-repo-settings-tab.png)
1. turn on github pages, ![github settings
   tab](/images/blog/jekyll-setup/github-pages-setup.png)
1. configure your domain name, ![github settings
   tab](/images/blog/jekyll-setup/github-custom-domain.png)
1. enable https ![github settings
   tab](/images/blog/jekyll-setup/github-https.png)
1. Go to GoDaddy and [set up the DNS to point to the github
   servers](https://help.github.com/en/articles/using-a-custom-domain-with-github-pages)

# Blogging with Jekyll

1. Create new text file in the `_posts` folder, name it
   `yyyy-mm-dd-your-post-title.md`,
1. steal the header block from above and customise it for your post,
1. write stuff
1. use markdown for layout,
1. add images by saving them to an images folder and also adding them to your
   git repo, use `![alt text](/images/something.png)` to show the image in your `.md` file,
1. check everything in & `git push` to github,
1. your changes are live within seconds of pushing.

If you aren't up to the full `git` setup, you can edit your blog directly in github's web interface.

1. Creating a new post
   ![creating a post](/images/blog/jekyll-setup/editing-new-file.png)
1. Editing a post
   ![editing a post](/images/blog/jekyll-setup/editing-edit.png)
1. Editing the text of a post
   ![editing the text of a post](/images/blog/jekyll-setup/editing-editing.png)

# Summary

Wordpress was overcomplicated for my needs, and slower to use/read, this new setup should mean I can tap away on the train and send new thoughts your way more regularly.

Bonus points for MailChimp's [rss to email](https://mailchimp.com/features/rss-to-email/) which means it'll automatically hit your inbox.
