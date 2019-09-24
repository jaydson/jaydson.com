---
author: Jaydson Gomes
categories:
- JavaScript
date: "2010-06-08T09:33:00Z"
description: ""
draft: false
slug: javascript-recursao-para-executar-n-vezes-uma-funcao-2
tags:
- JavaScript
title: JavaScript - Recursão para executar N vezes uma função
---

Para quem gosta de desafios de programação em Javascript, encare esse post como um, senão encare apenas como uma dica mesmo.  
Se encarou como desafio, tente implementar uma solução diferente(melhor?) para o problema:  

Criar uma função genérica (leia-se reuzável) que execute uma determinada função X vezes em Y milisegundos.  
Sacaram a ideia?  
Imaginem uma aplicação onde precisamos chamar diversas vezes uma função em um determinado intervalo.  
Este é o desafio, porém o legal é fazer isso em uma única função e sem usar variáveis auxiliares.  

<!-- more -->
Minha implementação segue abaixo:  
```javascript
function _(i,m,callback){
     setTimeout(function(){
       return i > 1 ? _(--i,m,callback) : false;
    },m);
    callback(i);
}
```

Simples, não?  
Mais abaixo vou explicar o que acontece.  
Com essa função é possível fazer implementações deste tipo:  
```javascript
/*
   Irá executar 5 vezes no intervalo de 500 milisegundos a função anônima abaixo.
*/
_(5,500,function(){
        // XHR buscando um JSON
	$.getJSON('sample.json',function(jsonObject){
		console.log(jsonObject);
	});
});

/*
   Irá executar 44 vezes no intervalo de 1 segundo a função anônima abaixo.
*/
_(44,1000,function(){
       console.log('X');
});
```

Bom, esta função resolveu um problema específico que enfrentei, e resolvi posta-la para quem possa precisar um dia.
Mas o interessante é sua implementação em poucas linhas e sua recursividade.  

Explicação:  
Notem que a função recebe 3 parâmetros (i,m,callback) onde:  
i = Quantidade de vezes que a função deve ser executada  
m = Intervalo em milisegundos  
callback = Função a ser executada  

A primeira ação da função é executar o setTimeout() passando a função e os milisegundos.  
Logo uma operação ternária para verificar se a quantidade é maior que 1. Porque isso?  
Porque para economizar variáveis auxiliares e outras possíveis complicações, o que fiz foi decrementar a quantidade de vezes, ou seja, se a função deve ser executada 5 vezes, começo em 5 até chegar a 1.  
Se ainda é maior então chamamos a mesma função recursivamente, e claro, decrementando a quantidade de vezes.  
OBS: O decremento à esquerda (--i) faz com que a variável i seja decrementada antes de ser passada para a função.  
A cada chamada, a função passada é executada e ainda devolve o índice atual para possível manipulação.  

Enfim, esta foi minha solução, caso consigam desenvolver outra, ou já tenham feito algo parecido, postem ai! ;)