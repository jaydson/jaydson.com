---
author: Jaydson Gomes
categories:
- blog
- pwa
- web
date: "2018-09-03T18:38:17Z"
draft: false
image: /images/2018/09/blog-home.jpg
slug: mudancas-no-blog-2018
tags:
- blog
- pwa
- web
title: Mudanças no Blog 2018
---
Em julho de 2017 eu fiz uma mudança aqui no blog, migrei para o [Hugo](https://gohugo.io/).  
Relatei tudo no post [Migrando para o Hugo](https://jaydson.com/migrando-para-o-hugo/).  
Quase um ano depois, resolvi fazer mais algumas mudanças.  

### Design

A primeira e mais relevante é uma mudança que, à primeira vista, parece somente estética, porém, vai muito além disso (veja nos itens posteriores).  
O layout do blog está bem mais *clean*.  
A home possui apenas os últimos cinco posts, cada um sendo listado com o título e algumas linhas de introdução.  

![Screenshot da home do blog](/images/2018/09/blog-home.jpg)  

Tanto a home como as páginas dos posts seguem o minimalismo do preto no branco.  
Usei como base o tema [Paper](https://themes.gohugo.io/hugo-paper/) do Hugo e fiz algumas mudanças de acordo com o que eu queria.  
O foco é o texto, com ajuda de imagens, etc.  

### Performance
É inaceitável que em 2018 tenhamos tanto lixo em nossos websites, blogs e aplicações web.  
Comecei a fazer uma limpeza no meu próprio blog e notei que existia muita coisa inútil.  
Além disso, eu não estava fazendo o uso total das boas práticas de performance.  
Tornei o pouco de CSS necessário *inline* (incorporado no HTML).  
O pouco de JavaScript existente também está *inline* no fim do documento.  
Não existe nenhuma dependência externa, com exceção do [service worker](https://developer.mozilla.org/pt-BR/docs/Web/API/Service_Worker_API/Using_Service_Workers) para tornar o site uma PWA.  

No primeiro acesso, sem cache, o site é carregado em média em **300ms**, sendo que o DOM está pronto em **171ms**.  
São apenas **9.4KB** transferidos na rede.  

![Screenshot com os detalhes de performance do blog](/images/2018/09/blog-performance.jpg)  

Com isso, o site **jaydson.com** está com 100% na nota de performance no [Lighthouse](https://developers.google.com/web/tools/lighthouse/).  

### PWA
Como mencionado acima, tornei o blog uma [PWA](https://developers.google.com/web/progressive-web-apps/).  
Ainda não explorei todo o potencial, mas já é possível consumir o conteúdo do blog *offline*.  
Também é possível adicionar o meu blog na *homescreen* do seu smartphone.  

### Adeus Disqus
Eu usava o Disqus como ferramenta para comentários.  
Depois de pensar um pouco e estudar alternativas, cheguei à conclusão de que o preço que se paga ao usar essas soluções não vale a pena.  
São muitas requisições, muito *tracking* desnecessário e sinceramente, comentários na internet atualmente não me interessam.  
Quem quiser entrar em contato comigo, seja para falar sobre um post ou qualquer outro assunto, pode me mandar um email/IM.  
Abolir o Disqus está relacionado ao meu [Social Detox/Rehab](https://jaydson.com/social-detox-rehab/).  

### Adeus Google Analytics
Estamos tão acostumados com o *online tracking* que às vezes nem nos damos conta do quanto isso pode afetar nossas vidas.  
Não vou entrar em detalhes neste post, mas resolvi também remover o Google Analytics do meu site.  
Meu blog não é um blog comercial, eu não tenho metas de acesso, não vivo financeiramente dele e não preciso saber o número de pessoas que está acessando.  
No meu ponto de vista, o Google Analytics é outro item que não vale a pena.  

### Conclusão
Algumas mudanças podem ser radicais, mas no momento sinto que eram necessárias.  
O resultado final me agradou bastante e aos poucos vou introduzindo melhorias.  
Com todas as alterações, a nota geral no Lighthouse ficou excelente, mas ainda existe espaço para melhorar.  

![Screenshot com o resultado do lighthouse](/images/2018/09/lighthouse.jpg)  