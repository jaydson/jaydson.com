---
author: Jaydson Gomes
categories:
- JavaScript
- Ajax
- jQuery
date: "2009-09-15T09:15:00Z"
description: ""
draft: false
slug: capturar-erros-ajax-com-jquery
tags:
- JavaScript
- Ajax
- jQuery
title: Capturar erros Ajax com jQuery
---

⚠️ Atenção:  
Este post continua recebendo muitos acessos mesmo tendo sido escrito em 2009.  
Muita coisa mudou desde então. Talvez o jQuery seja mais necessário ou até mesmo o "Ajax", visto que agora temos uma nova e mais robusta API para requisições, o [`fetch`](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch).  
Avalie com cautela.  
De qualquer forma, se o seu objetivo é saber como capturar erros Ajax com jQuery, o post pode te ajudar. Só leve em consideração o contexto e data de escrita.

----

Capturar erros Ajax é mais uma tarefa que o [jQuery](https://jquery.com/) nos da uma boa ajuda.  
A biblioteca nos fornece uma série de informações úteis que às vezes podem passar despercebidas.  
O primeiro ponto a se notar é o evento `error`.  
Neste evento podemos passar uma função de _callback_ que será executada quando a requisição falhar. São passados 3 parâmetros para esta função:  
- O objeto `XMLHttpRequest`  
- Uma `string` que descreve o tipo do erro que aconteceu  
- Um objeto exceção (opcional)  

Uma boa observação é que nunca teremos o evento `success` e o evento `error` juntos em uma mesma requisição.  

Vamos ver um exemplo simples de uma requisição Ajax:  

```
$.ajax({
	type: "POST",+
	url: "teste.php",
	success: function(retorno){
		alert(retorno);
	}
});
```

Neste exemplo fazemos uma requisição Ajax e no sucesso damos um alerta do conteúdo retornado.  
Mas e se der algum tipo de erro?  
Vai de aplicação para aplicação, mas dependendo do caso podemos querer capturar o erro e fazer algum tratamento, ou simplesmente mostrar o erro.  
Vamos agora ver um exemplo capturando o erro:  

```
$.ajax({
	type: "POST",
	url: "teste.php",
	success: function(retorno){
		alert(retorno);
	},
	error: function(XMLHttpRequest, textStatus, errorThrown){
		alert("Erro!");
	}
});
```

No exemplo acima, capturamos o erro e damos um alerta de erro caso ocorra falha na requisição.  
Para ficar pouco mais útil, vamos ver as propriedades e métodos do objeto `XMLHttpRequest`.  
Com um `for in` no objeto, é possível pegar todas suas propriedades. Abaixo listo algumas:  
```
dispatchEvent()
removeEventListener()
open()
setRequestHeader()
send()
readyState
status
channel
responseXML
responseText
statusText
abort()
getAllResponseHeaders()
getResponseHeader()
```
Caso queiram fazer o teste, varrer o objeto e ver suas propriedades:  

```
for(i in XMLHttpRequest) {
	if(i!="channel")
	console.log(i +" : " + XMLHttpRequest[i])
}
```

OBS:  
Este filtro testando se a propriedade é "channel" é necessário, pois o browser gera uma exceção de permissão negada para ler essa propriedade.  

Bom, com isso já é possível se ter uma boa noção sobre como capturar erros Ajax, agora o que fazer com eles é com vocês.  
Usei bastante esta técnica na manipulação de Ajax no projeto [TheWebMind.org](http://thewebmind.org), e em alguns outros sistemas.  
Estou preparando um plugin para o jQuery que auxiliará bastante.  
Segue uma prévia do que já implementei abaixo:  

```
error: function(XMLHttpRequest, textStatus, errorThrown){
	$(XMLHttpRequest).AjaxDebug({
		containerId : 'load',
		nativeConsole : false
	});
}
```

A idéia é fornecer um console que exiba as informações ou passe-as para um determinado elemento.  
Em breve posto aqui quando estiver pronto!  

E claro, não vamos esquecer do [Firebug](http://getfirebug.com) que é um excelente debugador para Ajax também.  
