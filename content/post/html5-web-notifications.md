+++
author = "Jaydson Gomes"
categories = ["JavaScript", "HTML5"]
date = 2013-05-02T07:15:00Z
description = ""
draft = false
image = "/images/2016/09/notification.jpg"
slug = "html5-web-notifications"
tags = ["JavaScript", "HTML5"]
title = "HTML5 Web Notifications"

+++

Web Notification é mais uma das minhas features preferidas do HTML5.  
Como o nome sugere, Web Notification é uma API para enviar notificações ao usuário mesmo que ele não esteja na página de origem.  
A API já está em [working draft](http://www.w3.org/TR/notifications/) desde o ano passado, e o Chrome suporta desde a versão 24.  
A novidade é que o Firefox agora também [suporta Web Notifications](https://hacks.mozilla.org/2013/04/hidpi-support-html5-notifications-parallel-js-asm-js-and-more-firefox-development-highlights/) em suas versões [Nightly](http://nightly.mozilla.org/) e [Aurora](http://www.mozilla.org/en-US/firefox/aurora/).  
A API é bem simples, e como várias outras (Geolocation, WebRTC), é necessário pedir permissão ao usuário para poder utilizar.  
O Chrome implementou bem antes o suporte a Web Notifications, mas baseado em uma versão velha da especificação.  
A versão oficial da W3C ainda não está disponível no Chrome, mas é bem simples dar suporte ao Chrome e ao Firefox em nossas aplicações.

## API  
Temos disponível o obejto _**Notification**_.  
Para pedir permissão, utilizamos o método _**requestPermission**_.  
```javascript
Notification.requestPermission(function(perm) {
    console.log(perm);
});
```
Este método recebe uma função de callback como parâmetro, e devolve o STATUS da requisição de permissão.  
Este STATUS pode ter os seguintes valores: _**default, denied e granted**_.  
O valor default e denied significam praticamente a mesma coisa, a diferença é que "denied" foi explicitamente escolhido pelo usuário, ou seja, ele clicou na opção "negar".  
Após pedir permissão, basta instanciar um objeto Notification.  
```javascript
var notification = new Notification("Título da notificação", {
    dir: "auto",
    icon: "icon.png",
    lang: "",
    body: "Uma bela notificação aqui",
    tag: "tag",
});
```
O primeiro parâmetro, e único obrigatório, é o título da notificação.  
O segundo parâmetro é um objeto literal com algumas opções, dentre elas _**icon**_ para definir um ícone para a notificação, e _**body**_, que define o corpo da notificação.  
A notificação possui 4 eventos: _**onclick, onshow, onerror, onclose**_.  
Estes callbacks nos dão mais poder sobre cada notificação, podemos tomar decisões específicas para cada um dos eventos.  
```javascript
var notification = new Notification("Chegou um novo Email cara!", {
    dir: "auto",
    icon: "icon.png",
    lang: "",
    body: "Olá, por favor entre em contato.",
    tag: "tag",
});
notification.onclick = function () {
	/*
		Alguma ação aqui.
	*/
}
```
O legal destes callbacks é que, mesmo que o usuário não esteja na página, ao clicar na notificação, alguma ação pode ser executada em background na aplicação.  

## Demo - Programming quote
Fiz um demo utilizando o recurso das notificações.  
A ideia é randomizar citações relacionadas a programação, e notificar o usuário, mesmo que ele não esteja na página.  
Testem abaixo:  

<iframe style="width:100%;height:400px;border:none" src="http://jaydson.github.io/web-notification-sample/"></iframe>  

## Considerações finais  
Bom, é isso pessoal.  
Mais uma API muito útil para deixarmos nossas aplicações ainda melhores.  
Em pouco tempo outros browsers devem implementar, e a W3C deve lançar a versão final da especificação.  
Qualquer dúvida ou sugestão, comentem aqui.  

## Links  
O demo pode ser acessado diratamente aqui: [http://jaydson.github.io/web-notification-sample/](http://jaydson.github.io/web-notification-sample/)  
O código do demo que fiz esta no Github: [https://github.com/jaydson/web-notification-sample](https://github.com/jaydson/web-notification-sample)  
A especificação da W3C: [http://www.w3.org/TR/notifications/#title-direction](http://www.w3.org/TR/notifications/#title-direction)  
Artigo no HTML5 Rocks: [http://www.html5rocks.com/en/tutorials/notifications/quick/](http://www.html5rocks.com/en/tutorials/notifications/quick/)  

PS: Desculpem a falta de perspectiva na imagem :(  
Mas me dêem um desconto, eu fiz no Gimp.  
