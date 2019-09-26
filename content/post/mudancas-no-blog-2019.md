---
author: Jaydson Gomes
categories:
- blog
- web
date: "2019-09-26T10:38:17Z"
draft: false
image: /images/2019/09/jaydson.com-2019.png
slug: mudancas-no-blog-2019
tags:
- blog
- web
title: Mudanças no Blog 2019
---
Em julho de 2017 eu fiz uma mudança aqui no blog, migrei para o [Hugo](https://gohugo.io/).  
Relatei tudo no post [Migrando para o Hugo](https://jaydson.com/migrando-para-o-hugo/).  
Quase um ano depois, resolvi fazer mais algumas mudanças, tudo relatado no post [Mudanças no Blog 2018](https://jaydson.com/mudancas-no-blog-2018/).  
Agora chegou o momento de mais algumas mudanças.  
Continuo usando o excelente e poderoso [Hugo](https://gohugo.io/), explorando mais suas funcionalidades e até aprendendo um pouco mais sobre [Go](https://golang.org/).  


### Design

Eu já tinha deixado o blog bem mais *clean*.  
Dessa vez fiz uma mudança maior no tema [Paper](https://themes.gohugo.io/hugo-paper/).  
Isolei o projeto (antes estava dentro da estrutura do blog) e criei um fork no meu GitHub.  
Implementei algumas coisas visuais com o [Tailwind CSS](https://tailwindcss.com/).  
O Tailwind é um framework CSS um pouco diferente, ele provê funcionalidades base para cirar designs customizados.  
Utilizei alguns dos componentes base existentes para criar o header do site e também os cards listados na home.  
Segue o link para o tema: [hugo-paper-tailwind](https://github.com/jaydson/hugo-paper-tailwind).  

![Screenshot da home do blog em 2019](/images/2019/09/jaydson.com-2019.png)  

### Micro posts
Fiz uma mudança no tema para suportar "micro posts".  
Como não uso mais Twitter (e nenhuma outra rede social - [https://jaydson.com/social-detox-rehab/](https://jaydson.com/social-detox-rehab/)) resolvi fazer o meu próprio blog suportar este tipo de conteúdo.  
Para fazer isso basta que eu adicione a propriedade `micro` nos metadados do post.  
A implementação no tema ficou assim:  
```
<p class="text-gray-700 text-base">
  {{ if .Params.micro }}
    <div class="post-content">{{ .Content }}</div>
  {{ else }}
  {{ .Summary | plainify | htmlUnescape }}...
  {{ end}}
</p>
```
É basicamente uma condição onde quando identifico que o conteúdo é um `micro post` então renderizo o conteúdo completo no card da home.  

![Imagem mostrando um micro post no blog](/images/2019/09/micro-post.png)  

Outro detalhe importante e que me tomou bastante tempo foi a migração do meu conteúdo do Twitter para o blog.  
Como assim, Jaydson?  
Isso mesmo, migrei 10 anos de tweets para o meu blog. Meus tweets agora estão disponíveis em forma de `micro posts` aqui no blog, afinal de contas, o conteúdo é meu, né?  
O link está disponível no header do site, mas segue aqui também: [https://twitter.jaydson.com/](https://twitter.jaydson.com/).  
Como fiz isso? Relatei tudo no post [Como migrei 10 anos de tweets para o meu blog](https://jaydson.com/como-migrei-10-anos-de-tweets-para-o-meu-blog).  

### Futuro
A ideia principal desta mudança é escrever mais aqui o blog, sejam `micro posts`, artigos técnicos e não técnicos, artigos sobre mercado e empreendedorismo, até mesmo música, política, séries, filmes, etc.  
Espere ver conteúdo sobre o impacto da tecnologia na sociedade e Web descentralizada.  