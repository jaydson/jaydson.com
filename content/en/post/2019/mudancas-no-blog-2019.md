---
author: Jaydson Gomes
categories:
- blog
- web
date: "2019-09-26T10:38:17Z"
draft: false
image: /images/2019/09/jaydson.com-2019.png
slug: blog-changes-in-2019
tags:
- blog
- web
title: Blog changes in 2019
---
In July 2017 I made a change here in my blog, I migrated to [Hugo](https://gohugo.io/).  
I reported everything in the post [Migrating to Hugo](https://jaydson.com/migrando-para-o-hugo/).  
Almost a year later, I decided to make more changes, all reported in the post [Blog Changes 2018](https://jaydson.com/mudancas-no-blog-2018/).  
Now the time has come for some more changes.  
I continue to use the excellent and powerful [Hugo](https://gohugo.io/), further exploring its functionality and even learning a little more about [Go](https://golang.org/).  

### Design

I had already made the blog much cleaner.  
This time I made a major change in [Paper](https://themes.gohugo.io/hugo-paper/) theme.  
I've also isolated the project (before it was inside the blog structure) and created a fork on my GitHub.  
I've implemented some visual things with [Tailwind CSS](https://tailwindcss.com/).  
Tailwind is a slightly different CSS framework, it provides basic functionality for creating custom designs.  
I used some of the existing base components to create the site header and also the cards listed in the home.  
Here are the custom theme: [hugo-paper-tailwind](https://github.com/jaydson/hugo-paper-tailwind).  

![Screenshot da home do blog em 2019](/images/2019/09/jaydson.com-2019.png)  

### Micro posts
My blog is now supporting "micro posts".  
As I don't use Twitter anymore (and no other social networks - [https://jaydson.com/social-detox-rehab/](https://jaydson.com/social-detox-rehab/)) I've decided to make my own blog support this kind of content.  
In onrde to do that I just need to add a `micro` property on the post metadata.    
The implementation on the theme was like this:  

```
<p class="text-gray-700 text-base">
  {{ if .Params.micro }}
    <div class="post-content">{{ .Content }}</div>
  {{ else }}
  {{ .Summary | plainify | htmlUnescape }}...
  {{ end}}
</p>
```
It is basically a condition where when I identify the content as a `micro post` then I render the full content on the home card.  

![Imagem mostrando um micro post no blog](/images/2019/09/micro-post.png)  

Another important detail that took me a long time was the migration of my Twitter content to the blog.  
What do you mean, Jaydson?  
That's right, I migrated 10 years of tweets to my blog. My tweets are now available as micro posts here on the blog, after all, the content is mine, right?  

The link is available in the site header, but it goes here too: [https://twitter.jaydson.com/](https://twitter.jaydson.com/).  
How did I do it? I reported everything in the post [How I migrate ten years of tweets to my blog](https://jaydson.com/en/how-i-migrate-ten-years-of-tweets-to-my-blog).  

### Future
The main idea of this change is to write more, be it micro posts, technical and non-technical articles, articles about market and entrepreneurship, even music, politics, series, movies, etc.  
You can expect to see content about the impact of technology on society and decentralized web.  