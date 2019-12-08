---
author: Jaydson Gomes
categories:
- JavaScript
date: "2009-10-14T08:58:00Z"
description: ""
draft: false
slug: javascript-problema-com-evento-change
tags:
- JavaScript
title: JavaScript - Problema com Evento Change
---

Semana passada deparei-me com um problema no Internet Explorer **_(Déjà vu)_**.  
A funcionalidade que precisavamos implementar era bem simples:  
**Verificar se o formulário foi alterado. **  
Ou seja, se o usuário está na página e resolve simplesmente sair e o formulário foi alterado, precisavamos alerta-lo.  
O que me ocorreu na hora foi utilizar o Evento [change](http://www.quirksmode.org/dom/events/change.html) do form.  

Fiz o teste no Firefox e tudo ocorreu como o previsto. Ao alterar o valor de qualquer elemento dentro do formulário o evento change é disparado.  
Mas... e no nosso "amigo" Internet Explorer?  
Surpresa!  
Não funcionou. Então fui pesquisar para ver o porque do problema.  
Neste link  [http://www.quirksmode.org/dom/events/change.html](http://www.quirksmode.org/dom/events/change.html) do QuirksMode fica bem fácil de entender.  
O que acontece é que no Internet Explorer o evento change não é disparado ao alterar um formulário.  
**Nota:** Percebam que é somente no IE que isso acontece.  
Abaixo segue a lista de Browsers que suportam o evento change no Formulário:
FF 2.0  
FF 3.0  
FF 3.1b2  
Saf 3.0 Win  
Saf 3.1 Win  
iPhone 3G  
Chrome 1.0  
Opera 9.62  
Opera 10a  
Konqueror 3.5.7  

Fonte: QuirksMode. 

**Outra Nota:** No IE o evento change também não é disparado nos objetos window e document. Em todos da lista acima sim.
Para o Internet Explorer o único elemento que dispara o evento change corretamente  é o input.  

**Solução:**  
Como o projeto estava utilizando jQuery foi simples resolver mais um problema no IE. Segue o código abaixo:  
```javascript
$("form *").bind("change", function(){ /* Código aqui*/});
```
O código acima varre todos elementos do formulário e "atacha" o evento change para cada um deles.  

Bom, é isso.
Trabalhando e aprendendo.



