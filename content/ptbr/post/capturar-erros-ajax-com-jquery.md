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

Capturar erros Ajax é mais uma tarefa que o jQuery nos da uma boa ajuda.  
O que quero dizer com isso é que a biblioteca nos fornece uma série de informações úteis que as vezes passam desapercebidas pelos desenvolvedores.  
A primeira coisa a se notar é o evento **error**.  
Neste evento podemos passar uma função(_callback_) que será executada quando a requisição falhar. São passados 3 parâmetros para esta função:  
O objeto XMLHttpRequest, uma String que descreve o tipo do erro que aconteceu e um objeto exceção(opcional).  
Uma boa observação é que nunca teremos o evento **Success **e o evento **Error **juntos na mesma requisição(meio óbvio isso).  

Vamos a um exemplo simples de uma requisição Ajax:  

```javascript
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

```javascript
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

Agora capturamos o erro e damos um alerta de erro caso ocorra falha na requisição.  
Agora para ficar pouco mais útil, vamos ver as propriedades e métodos do objeto XMLHttpRequest.  
Basta fazer um "for in" no objeto que conseguimos pegar todas suas propriedades. Abaixo listo algumas:  
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
Caso queiram fazer o teste e varrer o objeto e ver suas propriedades:  

```javascript
for(i in XMLHttpRequest) {
	if(i!="channel")
	document.write(i +" : " + XMLHttpRequest[i] +"<br>")
}
```

OBS:  
Este filtro testando se a propriedade é "channel" é necessário, pois o browser gera uma exceção de permissão negada para ler essa propriedade.  

Bom, com isso já da pra ter uma boa noção sobre como capturar erros Ajax, agora o que fazer com eles é com vocês.
Usei bastante esta técnica na manipulação de Ajax no projeto [TheWebMind.org](http://thewebmind.org), e em alguns outros sistemas.  
Estou preparando um plugin para o jQuery que auxiliará bastante.  
Segue uma prévia do que já implementei abaixo:  

```javascript
error: function(XMLHttpRequest, textStatus, errorThrown){
	$(XMLHttpRequest).AjaxDebug({
		containerId : 'load',
		nativeConsole : false
	});
}
```

A idéia é fornecer um console que mostre estas informações, ou passar as informações para um determinado elemento.
Em breve posto aqui quando estiver pronto!  

E claro, não vamos esquecer do [Firebug](http://getfirebug.com) que é um excelente debugador para Ajax também.  
