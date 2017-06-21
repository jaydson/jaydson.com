+++
author = "Jaydson Gomes"
categories = ["Node.js", "JavaScript", "REST", "API"]
date = 2015-05-28T04:30:00Z
description = ""
draft = false
image = "/images/2016/09/11452731896_84aa56358f_o.jpg"
slug = "apis-rest-em-1-minuto"
tags = ["Node.js", "JavaScript", "REST", "API"]
title = "APIs REST em 1 minuto"

+++

No último [RSJS](http://rsjs.org) tive a oportunidade de assistir a palestra ["Ligthweight APIs with HarvesterJS"](http://dclucas.github.io/prez-harvesterjs) do meu ex-professor [Diogo Lucas](https://twitter.com/diogoclucas).  
Em poucos minutos de palestra eu já consegui identificar várias aplicações que fiz no passado, que poderiam ser totalmente reescritas de uma maneira muito mais simples com o [HarvesterJS](https://github.com/agco/harvesterjs).  
O HarvesterJS é originalmente um fork do projeto [FortuneJS](http://fortunejs.com/), um framework para criar APIs [REST](http://en.wikipedia.org/wiki/Representational_state_transfer) baseadas na spec [JSONAPI](http://jsonapi.org).  

O objetivo do Harvester foca em manter uma API fiel à JSONAPI spec, com suporte específico ao [MongoDB](http://docs.mongodb.org/) (além de resolver alguns problemas de escalabilidade).  
O projeto está bem ativo e é mantido pelo pessoal da [AGCO](http://www.agcocorp.com/), uma empresa do ramo da agricultura.  

Ok ok, _talk is cheap_.  
O título do post é bem sério. É possível criar uma API REST em 1 minuto com o Harvester.  
Supondo que o seu ambiente já tenha [Node.js](http://nodejs.org) e MongoDB, o resto é super fácil, mesmo.  
Digamos que a sua API precisa expor uma entidade "artist".  
Por expor entenda que a API deve disponibilizar métodos [CRUD](http://en.wikipedia.org/wiki/Create,_read,_update_and_delete) para as aplicações.  
```
// app.js
let harvester = require('harvesterjs');

let app = harvester({
	adapter: 'mongodb',
	connectionString: "localhost:27017/mydatabase"
});

app.resource('artist', {
	name: String,
	description : String,
})
.listen(1337);
```  

Pronto.  
Basta levantar a aplicação:  
```
node app.js
``` 
E agora existe uma API REST completa funcionando.  
O que é possível fazer?  
Todas as operações de CRUD via métodos http:  
## Listar todos artistas
```
GET 	/artists
```
## Criar um novo artista
```
POST 	/artists
{
	"name": "Sepultura",
	"description": "Brazilian Metal band"
}
```
## Pegar um artista pelo ID
```
GET 	/artists/555d0bbb37d40da5abc11a86
```
## Alterar os dados de um artista
```
PUT 	/artists/555d0bbb37d40da5abc11a86
{
	"name": "Sepultura",
	"description": "Best brazilian Metal band ever"
}
```
## Deletar um artista
```
DELETE 	/artists/555d0bbb37d40da5abc11a86
```
Ainda é possível criar relações de maneira bem simples.  
Digamos que um artista possui referência à outro artista, no caso, 1 para n.  
Podemos alterar o nosso "resource" de maneira que essa relação seja estabelecida:  
```
app.resource('artist', {
	name: String,
	description : String,
	influences : ['artist']
})
.listen(1337);
```  
Com esta simples alteração nossa API passa a suportar relações:  
```
GET  /artists/555d5c701eb2d1d033f3b704/influences
```
O retorno desta chamada será baseado nas relações previamente armazenadas, ou seja, se a aplicação disse que determinado artista possui 2 influências, um array de 2 artistas será retornado.  

## Conclusão
Este foi um post introdutório com objetivo de mostrar como é fácil criar APIs REST com o Harvester.  
Além da facilidade, o código necessário para escrever APIs fica muito fácil de manutenir e evoluir.  
Eu mesmo reescrevi uma aplicação que tinha certamente mais de 1500 linhas em pouco mais de 10 linhas com o Harvester.  
<blockquote class="twitter-tweet" lang="en"><p lang="pt" dir="ltr">Ontem reescrevi em 10 linhas uma aplicação que fiz há um ano atrás com umas 1500. Sério. &lt;3 HarvesterJS //cc <a href="https://twitter.com/diogoclucas">@diogoclucas</a></p>&mdash; Jaydson Gomes (@jaydson) <a href="https://twitter.com/jaydson/status/603541170426290178">May 27, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
É isso pessoal, para maiores informações sobre o Harvester, vasculhem o Github do projeto (ainda está com pouca documentação, mas em breve eles devem resolver esse problema).  