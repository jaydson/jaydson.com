---
author: Jaydson Gomes
categories:
- JavaScript
- ES6
- ES2015
- Node.js
date: "2014-04-15T07:48:00Z"
description: ""
draft: false
image: /images/2016/09/summer_harmony-1542318.jpg
slug: rodando-harmony-no-node
tags:
- JavaScript
- ES6
- ES2015
- Node.js
title: Rodando Harmony no Node
---

Nos últimos meses tenho estudado e estou fazendo alguns experimentos com [ES6](http://wiki.ecmascript.org/doku.php?id=harmony:harmony) tanto no browser quanto no [Node](http://nodejs.org/).  
Para um dos testes, quero rodar via linha de comando um programa escrito em node.  
Para rodar um código no Node usando a nova especificação, é preciso passar a flag _--harmony_ para que o node rode com tal suporte.  
É bem fácil:  
```
node --harmony --use-strict myfile.js
```

Para apenas rodar o código, isto basta.  
Mas para casos onde se está criando uma ferramenta de linha de comando por exemplo, isto não é suficiente e não atende a real necessidade.  
Procurei alternativas, e a que me pareceu mais simples (e funciona) é a [seguinte](http://superuser.com/questions/691133/always-run-node-with-the-harmony-flag):  
Criar um shell script que inicia o node com a flag apropriada, no caso _--harmony_.  
No meu caso estou no Ubuntu, e o passo-a-passo é mais ou menos este:
- Crie um arquivo com um nome qualquer, por exemplo, _nodeHarmony_, como sugere a solução do link acima.  
- Este arquivo deve estar no seu search path _/usr/local/bin_
- O conteúdo do arquivo deve ser este:

```
#!/bin/sh
node --use-strict --harmony "$@"
```
- Dê a permissão necessária para o script:
```
sudo chmod a+x
```

Pronto, isto deve fazer com que _nodeHarmony_ esteja disponível.  
Para testar, usando o mesmo exemplo citado acima:  
```
nodeHarmony myfile.js
```
Note que a única diferença é que não passamos a flag no comando.  
Mas para que tudo isso?  

Quando estamos criando uma ferramenta de linha de comando com node, precisamos informar que o script deve ser rodado com node, ficando algo assim:  
```
#!/usr/bin/env node
var program = require('commander');
program
  .version('0.0.1');
```
Neste caso, o node está iniciando sem a flag _--harmony_, tornando o uso das features ES6 indisponíveis na minha ferramenta.  
Com o passo-a-passo feito acima, conseguimos chegar no objetivo, basta alterar o script:  
```
#!/usr/bin/env nodeHarmony
var program = require('commander');
let foo = 'bar';
console.log(foo);
program
  .version('0.0.1');
```

Feito!
