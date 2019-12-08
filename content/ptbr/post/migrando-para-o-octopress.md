---
author: Jaydson Gomes
categories:
- Off-topic
date: "2013-01-09T20:13:00Z"
description: ""
draft: false
image: /images/2016/09/octopress.png
slug: migrando-para-o-octopress
tags:
- Off-topic
title: Migrando para o Octopress
---

Hoje publiquei a primeira versão do novo Blog.  
Entre as principais mudanças, está a plataforma.  
Migrei do nosso velho amigo [Wordpress](http://wordpress.org) para o novo amigo [Octopress](http://octopress.org).  
Outra mudança é o tema, apesar de parecido com o antigo, este tema novo é responsivo, algo que eu já planejava fazer faz um tempo.  
O tema é praticamente o default do Octopress, com algumas mudanças de cores, fontes e estrutura que apliquei.  
Para esta primeira versão ele ficará assim, mas meu objetivo é personaliza-lo mais em breve.  

## Porque fazer esta mudança?  
Usei o Wordpress por muito tempo aqui no Blog, e em alguns outros projetos também.  
Creio que para determinados sites/blogs, o ideal ainda continue sendo o Wordpress, mas para a minha necessidade, um gerador estático funciona melhor.  
Basicamente, o blog agora é baseado só em HTML, CSS e [JavaScript](https://developer.mozilla.org/en-US/docs/JavaScript). Não existe nenhuma dependência server-side, a não ser o próprio servidor servindo arquivos estáticos.
Outras dependências são baseadas em serviços externos, como [Disqus](http://disqus.com), Google Analytics, GitHub, entre outros.  

Outro fator importante é a possibilidade de usar outra tecnologia.  
Nunca fui muito adepto, e nunca fiz nenhuma linha de código Ruby, mas o [Jekyll](https://github.com/mojombo/jekyll) me pareceu ser a melhor solução para sites estáticos.  
O Octopress facilita ainda um pouco mais, fornecendo uma série de funcionalidades úteis.  
Existem vários projetos com o mesmo propósito, um dos mais usados é o [DocPad](https://github.com/bevry/docpad), feito em [Node](http://nodejs.org/), o que me agrada muito, mas ainda assim optei pelo Octopress.  

## Fatores importantes para a migração  
Eu mantenho este Blog desde 2009, já vou para o quinto ano. Durante este tempo criei muito conteúdo.  
Não posso simplesmente ignorar o histórico.  
Abaixo cito os principais pontos que me preocupei antes de migrar:  
* Manter as mesmas URL's  
* Manter caminho das Imagens  
* Comentários  
* Rollback  
* Deploy  

## Manter as mesmas URL
Para a nova estrutura eu mantive as mesmas URL's. Desde o início, sempre usei o padrão _http://jaydson.com/:post_name/, isso facilitou, pois não tenho nenhuma variável como data, identificador, etc.  
Tecnicamente, cada post/página é um diretório no servidor, com um arquivo index.html.  

## Manter caminho das Imagens
No Wordpress, todas imagens ficavam no diretório _wp_content/uploads.  
Tenho muita imagem neste diretório público. A única solução viável foi manter este diretório na raiz do servidor.  
Desta maneira todas as imagens continuam com a mesma URL.  
Por exemplo:  
![](/images/2016/09/jaydson-gomes-logo.png)
Esta imagem eu usei em um post de fevereiro de 2012, utilizando a estrutura Wordpress.  

## Comentários
Eu usava a solução de comentários nativa do Wordpress.  
No momento que comecei a pensar em migrar o Blog, fiz a migração para dos comentários para o Disqus.  
Esta tarefa é bem fácil, existem um plugin Wordpress para isso.  
[http://disqus.com/admin/wordpress/](http://disqus.com/admin/wordpress/)  
Testei por algum tempo a solução do Disqus no próprio Wordpress, e gostei bastante.  
Agora no novo Blog, os comentários são baseados apenas em JavaScript.  
Um único porém nesta solução é o SEO, pois comentários gerados por JavaScritp não são indexados, e em alguns casos isso pode ser impeditivo.  

## Rollback  
Apesar de ser apenas um Blog pessoal, eu tenho o mesmo cuidado com que teria com qualquer outra aplicação.  
Por isso, estou mantendo backups para fazer um possível rollback.  
O Wordpress possui uma ferramenta de exportação, que gera um XML bem completo com dados e metadados sobre o seu Blog.    
Eu sempre mantive um cópia deste XML de tempos em tempos.  
O tema que fiz esta no Github, e é facilmente plugável a uma nova instalação do Wordpress.  
Com isto, qualquer problema que eu tenha, eu posso instalar um novo Wordpress, plugar o tema, importar os dados, e pronto, tenho o Blog funcionando como antes.  

## Deploy  
Nesta primeira fase, apenas publiquei a estrutura no meu servidor, via FTP.  
Mas FTP é algo que detesto, e existem várias maneiras de se fazer um deploy atualmente, e este será o próximo passo.  
Estou pensando em usar o GitHub Pages, que permite que eu faça um deploy diretamente no Github, após o meu Push no repositório.  
O Octopress fornece ferramentas que facilitam esta tarefa, mas ainda não parei para fazer.  

## Octopress  
O [Octopress](http://octopress.org/) é um framework para blogs, baseado no [Jekyll](https://github.com/mojombo/jekyll).  
Na atual versão(2.0), ele possui killer features:   
* Um template HTML5 semântico  
* Layout responsivo  
* Suporte nativo para Twitter, Google Plus One, Disqus Comments, Pinboard, Delicious e Google Analytics  
* Uma maneira fácil de deployment (Github pages, Rsync)  
* Compass e Sass (Não sou muito fã destes caras, mas vou testar também)  
* Syntax highlighting 

## Conclusão 

Bom, ainda estou em fase de avaliação da plataforma, testes, etc, mas estou gostando bastante.  
O [Elton Minetto](http://eltonminetto.net) fez a migração Wordpress>Octopress e relatou neste [post](http://eltonminetto.net/blog/2013/01/04/migrando-wordpress-para-octopress/).  
Para quem quiser mais detalhes de como migrar, vale a pena dar uma lida.  
Em breve farei um post sobre minhas dificuldades na migração e soluções adotadas.  


