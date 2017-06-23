+++
author = "Jaydson Gomes"
categories = ["JavaScript", "Browsers", "JSON"]
date = 2009-07-13T05:04:00Z
description = ""
draft = false
slug = "json-nativo-firefox-3-5"
tags = ["JavaScript", "Browsers", "JSON"]
title = "JSON nativo Firefox 3.5"

+++

Muita coisa nova e útil para nós desenvolvedores no Firefox 3.5.  
Novo motor Javascript, suporte HTML 5 entre várias outras. [Acessem aqui ](https://developer.mozilla.org/En/Firefox_3.5_for_developers)caso ainda não tenham visto(deveriam caso sejam desenvolvedores).  
Apesar de o JSON já ser nativo desde a versão 3.1, agora é que isso ficou bem evidenciado.  

Bom, não vou comentar o que é JSON, até porque já fiz isto em outro post, então caso não saiba o que é JSON(deveria se é desenvolvedor) veja o meu [post antigo](http://jaydson.com/json/), ou melhor ainda, acesse a [página oficial](http://json.org/).  

## O que significa JSON nativo no browser?
Bom, isso significa que o desenvolvedor não precisará usar nenhuma biblioteca extra para fazer o parse de um objeto JSON, e também não será necessário usar a função [eval()](http://www.w3schools.com/jsref/jsref_eval.asp) nativa no Javascript para fazer isso, o que é bem aconselhável pela insegurança desta função.  

## Benefícios
Vários.  
Em primeiro lugar a possibilidade de parsear um objeto JSON sem o uso do eval(). Isso é extramamente útil pois o eval() executa toda a string recebida sem fazer nenhuma análise, ou seja, se a string contiver funções, estas serão executadas.  
Por esse motivo usar JSON nativo é muito mais seguro, pois não são suportadas funções.  É feita uma análise na string recebida e então a conversão é feita apenas das propriedades do objeto.  
Outra funcionalidade é esta análise feita na string, se o JSON estiver mal formatado será gerado um parse error.  
E o benefício que mais me agrada: **Rapidez**!  
Sim, o parse de um objeto JSON nativamente é muito rápido, mesmo!  
Como provar isso?  
Simples... Código!  

Primeiro criei um arquivo JSON que peguei de exemplo no blog da [Mozilla](http://blog.mozilla.com/webdev/2009/02/12/native-json-in-firefox-31/) onde eles explicam sobre o uso do JSON nativo.  
Este arquivo é consideravelmente grande, possui um array com **2918 objetos.  
**Não vou colocar o código aqui por razões óbvias...mas segue o link pra quem tiver curiosidade de ve-lo: [http://graphs-stage.mozilla.org/api/test](http://graphs-stage.mozilla.org/api/test)  

Agora vamos ao código javascript usando jQuery para fazer uma requisição Ajax e buscar o conteúdo desse arquivo.  

```javascript
var json = $.ajax({
	url: "test.json",
	async: false
}).responseText;
```

Este pequeno trecho do código mostra que a variável **json **agora possui o conteudo do arquivo(aquele bem grande com 2918 objetos).  

Agora que temos uma "Stringona" vamos tranforma-la em um objeto JSON.  
Primeiro usando o **eval()**:  

```javascript
var obj = eval('(' + json + ')');
```
E agora usando o parser nativo !!! O/  

```javascript
var obj = JSON.parse(json);
```

Para quem já usou  a biblioteca JS disponível no [json.org](http://json.org) pode notar que a sintaxe é a mesma, a direrença aqui é que estamos trabalhando nativamente.  
Bom, sabemos que o parser nativo é mais seguro que o eval(), mas como saber se é mais rápido?  
O [Firebug](http://getfirebug.com/) nos ajuda a medir isso.  
Vamos ver o código, primeiro medindo o tempo em milisegundos com o eval():  

```javascript
console.time("Eval");
var obj = eval('(' + json + ')');
console.timeEnd("Eval");
```

Para quem não sabe (se é desenvolvedor deveria ), o Firebug possui uma API que ajuda os desenolvedores de várias maneiras, a abordada aqui  é a função console.time(), que consegue medir o tempo em milisegundos de uma determinada instrução.  

**Resultado com eval():** 4004ms para executar o parse.  

Agora com parser nativo:
```javascript
console.time("JSON.parse");
var obj = JSON.parse(json);
console.timeEnd("JSON.parse");
```

**Resultado com JSON.parse:** 50ms para executar o parse.  
Bom, nem preciso comentar, os resultados falam por si só.  

Voces devem estar pensando agora que tudo isso é lindo, mas que  só funciona no Firefox...   :(  
Mas como JSON é cada vez mais usado por todo o mundo em diversos tipos de aplicações, não é apenas a Mozilla que implementa esta solução nativa.  
Acreditem, o IE 8 também possui suporte nativo a JSON. Veja com seus próprios olhos: [http://blogs.msdn.com/ie/archive/2008/09/10/native-json-in-ie8.aspx](http://blogs.msdn.com/ie/archive/2008/09/10/native-json-in-ie8.aspx)  

Mas claro que ainda não podemos contar com o suporte de todos os Browsers, e para isso podemos usar alguma biblioteca que desempenhe este papel. Eu indico a própria do site json.org: [http://www.json.org/json2.js](http://www.json.org/json2.js)  

Nos exemplos acima mostrei como parsear uma string em um objeto JSON, mas podemos fazer o inverso também:  
```javascript
var Pessoa = {};
Pessoa.nome = "Joaozinho";
Pessoa.idade = "30";
var jsonString = JSON.stringify(Pessoa);
console.log(jsonString);
```

No exemplo criamos um objeto Javascript, e em seguida o transformamos em um JSON:  

```javascript
{"nome":"Joaozinho","idade":"30"}
```
Buenas pessoal, por hora é isso.  

Referências:   
[http://blog.mozilla.com/webdev/2009/02/12/native-json-in-firefox-31/](http://blog.mozilla.com/webdev/2009/02/12/native-json-in-firefox-31/)  
[https://developer.mozilla.org/en/Using_JSON_in_Firefox](https://developer.mozilla.org/en/Using_JSON_in_Firefox)
[http://www.json.org/](http://www.json.org/)  
[http://blogs.msdn.com/ie/archive/2008/09/10/native-json-in-ie8.aspx](http://blogs.msdn.com/ie/archive/2008/09/10/native-json-in-ie8.aspx)  
[http://starkravingfinkle.org/blog/2008/02/extension-developers-native-json-parsing/
](http://starkravingfinkle.org/blog/2008/02/extension-developers-native-json-parsing/)  

Sintam-se a vontade para comentar, criticar, perguntar, etc.  
