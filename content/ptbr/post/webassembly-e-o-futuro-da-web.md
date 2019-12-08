---
author: Jaydson Gomes
categories:
- Web
- WebAssembly
- Wasm
- JavaScript
date: "2015-06-23T11:23:00Z"
description: ""
draft: false
image: /images/2016/09/webassembly.jpg
slug: webassembly-e-o-futuro-da-web
tags:
- Web
- WebAssembly
- Wasm
- JavaScript
title: WebAssembly e o futuro da Web
---

## O "wasm"
Na última semana, [Brendan Eich](https://brendaneich.com), o criador do [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript), [anunciou](https://brendaneich.com/2015/06/from-asm-js-to-webassembly) o [WebAssembly](https://github.com/WebAssembly).  
O WebAssembly, ou apenas _"wasm"_ é um novo formato binário para a Web.  
O [Eric Elliot](https://twitter.com/_ericelliott) [definou](https://medium.com/javascript-scene/what-is-webassembly-the-dawn-of-a-new-era-61256ec5a8f6) muito bem o que é o WebAssembly em 4 simples itens:  
- __*WebAssembly é uma melhoria para o JavaScript*__  
_Uma maneira de implementar coisas críticas para performance em wasm e usa-las com JavaScript_
- __*WebAssembly é uma nova linguagem*__  
_Código wasm define um [AST](https://en.wikipedia.org/wiki/Abstract_syntax_tree) representado em um formato binário_
- __*WebAssembly é uma melhoria para os Browsers*__  
_Os Browsers entenderão esse formato binário, e na maioria dos casos isso será mais rápido_
- __*WebAssembly é uma forma de suportar outras linguagens na plataforma Web*__  
_Outras linguagens poderão compilar para wasm e rodar no navegador como binário first-class_  
<br>

Parafraseando o Brendan, wasm é uma nova representação intermediária de código na Web.  
Esse novo formato tem como objetivo principal ser performático (mais do que o JavaScript e mais do que o [asm.js](http://asmjs.org/)) e também permitir que outras linguagens compilem para wasm, fazendo com que rodem "nativamente" na Web.  
Obviamente uma questão vêm à tona: Mas já não houveram outras iniciativas parecidas como essa antes? Flash? Google Native Client?  
Pois é.  
O [Dr. Axel Rauschmayer](http://www.2ality.com/) [listou](http://www.2ality.com/2015/06/web-assembly.html) 3 pontos que diferem a nova abordagem das antigas:  
- Não existe uma só empresa por trás dessa iniciativa. [Mozilla, Google, Microsoft, entre outros](http://techcrunch.com/2015/06/17/google-microsoft-mozilla-and-others-team-up-to-launch-webassembly-a-new-binary-format-for-the-web/#.jhbnb6:Gfuu), estão engajados nesse projeto, com o objetivo de tornar a Web mais rápida.  
- Existe uma boa interoperabilidade entre o JavaScript e o wasm, diferente de antigas implementações (Lembram que horror integrar Flash com JS?). Usar wasm será tão simples como importar um [módulo ES2015/ES6](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import).  
- Para rodar o wasm não será necessário um plugin ou um novo _browser engine_, mas sim apenas a implementação desta nova camada nas engines existentes.  
<br>
Isso é excelente, pois o interesse aqui não é apenas algo específico para uma aplicação ou para uma empresa, mas sim para a evolução da Web.  
Um novo standard baseado em interesses da comunidade de desenvolvimento e com apoio das gigantes da tecnologia parece muito promissor.  
O projeto já nasceu [aberto](https://github.com/WebAssembly) e um [W3C Community Group](https://www.w3.org/community/webassembly/) já foi criado, portanto, se tu tens interesse em contribuir de alguma maneira, não existem barreiras!  

## Objetivos
O projeto lista alguns [High Level Goals](https://github.com/WebAssembly/design/blob/master/HighLevelGoals.md), dentre eles:    
- Definir um formato binário que seja eficiente no tamanho e no carregamento que possa ser compilado para ser executado em velocidade nativa, aproveitando recursos de hardware comuns disponíveis em diversas plataformas, incluindo mobile e [IoT](https://en.wikipedia.org/wiki/Internet_of_Things).  
- Especificar e implementar incrementalmente um MVP com as mesmas funcionalidades do asm.js, além de ter um polyfill que  traduzirá wasm para JavaScript.  
<br>
Creio que em pouco tempo já teremos algo disponível para brincarmos :)  
Para os mais aventureiros, já existe um [protótipo de polyfil](https://github.com/WebAssembly/polyfill-prototype-1) no Github onde é possível testar algumas coisas e entender o que teremos em futuro próximo.  
Neste protótipo existe uma ferramenta que compila arquivos JavaScript contendo código asm.js para o novo formato WebAssembly.  
Basicamente o resultado será algo assim:  
```
7761 736d 2603 0000 0000 0002 0303 0002
0103 0000 0000 0000 0000 0003 0001 0100
8000 8000 8000 0102 6f6e 6500 0074 776f
0001 
```
![WebAssembly Hacker](/images/2016/09/webassembly-hacker.jpg)

<br>
Sim, wasm é um fomato binário, lembram? (dãh)

É isso pessoal, esse foi um overview bem superficial do que é o WebAssembly.  
Recomendo fortemente que leiam os artigos citados abaixo nas referências para um melhor aprofundamento.  

Referências:  
https://brendaneich.com/2015/06/from-asm-js-to-webassembly  
https://github.com/WebAssembly  
http://www.2ality.com/2015/06/web-assembly.html  
https://medium.com/javascript-scene/what-is-webassembly-the-dawn-of-a-new-era-61256ec5a8f6  
http://arstechnica.com/information-technology/2015/06/the-web-is-getting-its-bytecode-webassembly  
http://techcrunch.com/2015/06/17/google-microsoft-mozilla-and-others-team-up-to-launch-webassembly-a-new-binary-format-for-the-web/#.jhbnb6:Gfuu  
