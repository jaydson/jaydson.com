---
author: Jaydson Gomes
categories:
- JavaScript
- Qunit
date: "2010-11-08T08:03:00Z"
description: ""
draft: false
slug: qunittestmachine-testes-unitarios-simplificados
tags:
- JavaScript
- Qunit
title: QunitTestMachine - Testes unitários simplificados
---

Existem [várias bibliotecas para fazer teste unitário](http://en.wikipedia.org/wiki/List_of_unit_testing_frameworks#JavaScript) em código Javascript, eu acabei escolhendo o [QUnit](http://docs.jquery.com/Qunit) como padrão em meus testes.
O  QUnit é um test suite poderoso e simples de usar. O próprio é usado para testar o código do jQuery e seus plugins oficiais, mas claro, com ele é possível testar qualquer código Javasript genérico, ou seja,  suas bibliotecas.

O QUnit é mais um projeto do [John Resig](http://ejohn.org/), e é mantido por ele e pelo [Jörn Zaefferer](http://bassistance.de/).
O código do QUnit esta no GitHub: [http://github.com/jquery/qunit](http://github.com/jquery/qunit)<!-- more -->

Apesar de o QUnit ser bem simples de ser usado, resolvi simplificar um pouco mais e criei o QUnitTestMachine.
Mas o que QUnitTestMachine faz?
- Simplifica seus testes Javascript baseados no QUnit
- Concentra em um único arquivo Javascript todas as configurações necessárias para rodar seus testes
- Roda seus testes de forma independente<!-- more -->

O QUnitTestMachine segue a convenção de possuir um arquivo de teste para cada arquivo Javascript em sua aplicação.
Sendo mais claro, se em sua aplicação existe um arquivo "myscript.js" o qual se faz necessário o teste, então no mesmo diretório onde se encontra esse arquivo deve existir um arquivo de teste chamado "test_myscript.js".
O prefixo "test_" pode ser alterado via API, mas o QUnitTestMachine usa este como padrão.  

Bom, vamos ver um pouco de código para ficar mais claro:  
Para iniciar, abra o arquivo config.js, que é o arquivo de configuração dos seus testes.  
- Defina o path root de sua aplicação

```javascript
QUnitTestMachine.defaults.path = 'http://localhost/';
```

Note que o path definido utiliza o endereço absoluto, isso é necessário para o carregamento correto dos scripts.  

- Após isso, defina o prefixo

```javascript
QUnitTestMachine.defaults.prefix = 'test_';
```

Note que se não for definido, o padrão é 'test_'  

- Adicione os scripts para o teste

```javascript
QUnitTestMachine.scripts.add({
   "scripts": [
         {name: "app/js/myscript.js"},
         {name: "app2/myscript2.js"}
   ]
});
```

Pronto. Feito isso a aplicação já está pronta para ser testada, acesse o arquivo test.html e veja o resultado.  
Espero que o QunitTestMachine ajude voces com testes unitários, pra mim tem facilitado bastante.  
O projeto esta no GitHub, então entrem lá, baixem, copiem, comentem, criem tickets, reportem bugs, etc.  
Abaixo segue o link:  
[https://github.com/jaydson/QUnitTestMachine](https://github.com/jaydson/QUnitTestMachine)
