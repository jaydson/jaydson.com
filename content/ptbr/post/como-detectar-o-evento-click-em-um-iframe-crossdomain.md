---
author: Jaydson Gomes
categories:
- JavaScript
date: "2012-02-09T22:31:00Z"
description: ""
draft: false
slug: como-detectar-o-evento-click-em-um-iframe-crossdomain
tags:
- JavaScript
title: Como detectar o evento Click em um iframe crossdomain
---

Situação um pouco estranha não?  
Mas é isso mesmo.  
Nunca tinha me deparado com tal "problema":  
Como saber que o evento Click foi disparado dentro de um iframe _crossdomain_?  
Bom, não existe uma maneira natural de fazer isso.  
O que acontece é que o evento click até acontece no iframe, mas somente no elemento em si.  
Isso quer dizer que, quando o click acontece em um elemento que esta no documento do escopo do iframe, somente este iframe sabe disso.  

## Como fazer então?  
Eu não tinha ideia, e aqui vale muito lembrar uma frase que ouvi em um evento certa vez:  
**"Nunca acredite em especialistas!"**  

No caso, o especialista sou eu, que não tinha até então uma maneira simples de resolver o problema.  
Um amigo/colega aqui do Terra(André Marquardt), que possui TB's de experiência, mas não em JavaScript, me sugeriu algo.  
Depois de matutar sobre a ideia, cheguei a conclusão de que _"PQP! Talvez funcione!"_.  

## Solução
A solução é bem simples:  
- Crie um placeholder em volta do iframe(iframe dentro de um DIV, por exemplo)  
- Adicione ao evento de mouseover deste elemento uma função que altere o valor de uma variável, informando que o mouse está ali  
- Adicione ao evento de mouseout deste elemento uma função que altere o valor da mesma variável, informando que o mouse saiu dali  
- Adicione ao evento blur do "body" uma função que verifica o valor da variável, e assuma que isso foi o click no iframe ;)  

## Porquê isso funciona?  
Quando clicamos em um iframe, estamos selecionando o elemento  "iframe" e neste caso, o evento "blur" do body vai ser disparado.  

![Mission](/images/2016/09/mission.jpg)

Obviamente, esta solução possui algumas limitações:  
- Somente 1 "click" será disparado no iframe. Isso porque quando estamos dentro do iframe, não temos mais o blur do body.  
PS: Tentei usar o focus() em algum elemento da página pai, mas sem sucesso.  
- Qualquer pixel do iframe que for clicado, o blur do body será disparado, ou seja, talvez o click não seja exatamente onde queremos medir.  

Abaixo um código sample da solução:  
```javascript
var myConfObj = {
	iframeMouseOver : false
}
window.addEventListener('blur',function(){
	if(myConfObj.iframeMouseOver){
		console.log('Wow! Iframe Click!');
	}
});

document.getElementById('YOUR_CONTAINER_ID').addEventListener('mouseover',function(){
	myConfObj.iframeMouseOver = true;
});
document.getElementById('YOUR_CONTAINER_ID').addEventListener('mouseout',function(){
	myConfObj.iframeMouseOver = false;
});
```
Gist: [https://gist.github.com/1780598](https://gist.github.com/1780598)