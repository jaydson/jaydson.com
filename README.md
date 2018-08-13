![Jaydson's personal website](https://cldup.com/dPihpusvs--2000x2000.png)
# jaydson.com
This is the source code for my personal website (https://jaydson.com/). I'm using [Hugo](https://gohugo.io) static site generator.  
If you're interested to build your website based on mine, feel free and follow the guidelines below.  

# About Hugo
> Hugo is a general-purpose website framework. Technically speaking, Hugo is a static site generator. Unlike other systems which dynamically build a page every time a visitor requests one, Hugo does the building when you create your content. Since websites are viewed far more often than they are edited, Hugo is optimized for website viewing while providing a great writing experience.

Please check Hugo installing page -> https://gohugo.io/overview/installing/  
Hugo is written in [Go](https://gohugo.io/overview/installing/), so you'll first need to install it.  

## New post
```
hugo new post/my-first-post.md
```

## Running
First, clone this repo and then.  
I'm using the Casper theme, which is a "copy" of Ghost Casper theme (which I was using previously).  
If you want to use Casper, just clone it to the `themes` directory.  

```
hugo server --theme=casper
```
Navigate to `localhost:1313` and you'll probably see my personal blog locally.  

## Content


# Deploy
I'm using [Netlify](https://www.netlify.com/), so the deploy is just a simple `git push`.

# Contribute
Feel free to open issues ralated to my website or if you have any questions about the steps to get this thing working.
