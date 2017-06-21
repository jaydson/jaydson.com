+++
author = "Jaydson Gomes"
categories = ["JavaScript", "jQuery"]
date = 2010-05-26T08:40:00Z
description = ""
draft = false
slug = "jquery-customizando-expressoes"
tags = ["JavaScript", "jQuery"]
title = "jQuery - Customizando expressões"

+++

O jQuery é uma excelente biblioteca, e suas constantes atualizações e profissionalismo fazem com que nós programadores tenhamos uma potente arma na mão para solucionar qualquer problema.  
Mas mesmo o jQuery sendo tão completo, sempre haverá alguma situação ímpar em que ele não suprirá sua necessidade.  
Um dos motivos que levou o jQuery a chegar ao nível de biblioteca Javascript mais utilizada do mundo, além de sua excelente performance e extremo profissionalismo foi a facilidade e possibilidade de extender suas funcionalidades.  
Hoje já são incontáveis os plugins que  existem para o jQuery.

O jQuery é uma excelente biblioteca, e suas constantes atualizações e profissionalismo fazem com que nós programadores tenhamos uma potente arma na mão para solucionar qualquer problema.
Mas mesmo o jQuery sendo tão completo, sempre haverá alguma situação ímpar em que ele não suprirá sua necessidade.
Um dos motivos que levou o jQuery a chegar ao nível de biblioteca Javascript mais utilizada do mundo, além de sua excelente performance e extremo profissionalismo foi a facilidade e possibilidade de extender suas funcionalidades.
Hoje já são incontáveis os plugins que  existem para o jQuery.

<!-- more -->Mas hoje venho falar de uma possibilidade muito interessante que mais uma vez devo a  dica ao [Ricardo Tomasi](http://twitter.com/ricardobeat), que é a customização de expressões.  
Uma rápida pesquisa no Google e voces encontraram varios posts espalhados pelo mundo falando a respeito.  
Customizar uma expressão consiste em incorporar ao jQuery um método que ele não possui nativamente.  

Mas porque diabos fazer isso?  
Acreditem, pode ser bem útil.  

No curso de jQuery que estou ministrando na [Target Trust](http://www.targettrust.com.br/web/), ontem bolei um exercício simples para os alunos:  

_Mude a cor de fundo de todas as TD's com indice ímpar da tabela com id tabela2_  

Sacaram a ideia?  
Simples. O que eu queria, é que eles fizessem da maneira deles, usando um loop, verificando o [mod](http://pt.wikipedia.org/wiki/Opera%C3%A7%C3%A3o_m%C3%B3dulo) do indice e assim aplicar o css no elemento, para então depois apresentar o [seletor odd](http://api.jquery.com/odd-selector/) que faz exatamente isso, só que em uma linha.  

```javascript
$("table td:odd").css("background-color", "#bbbbff");
```

Tudo tranquilo, mas um dos alunos muito antenado achou o seletor e resolveu o problema facilmente!  
Então mudei a estratégia, e pedi para ele implementar um algoritmo que apenas aplicasse o estilo nas TD's com indice que fosse [número primo](http://pt.wikipedia.org/wiki/N%C3%BAmero_primo).  
Novamente o aluno conseguiu.  
Foi ai que lembrei da possibilidade de customização das expressões!  
Fiz a proposta para o aluno: Se tu conseguir criar uma expressão customizada que retorne elementos baseando-se nos numeros primos terá um post no meu blog!  
Então ai esta. Abaixo segue o código implementado pelo aluno [Andre Pinto ](http://www.twitter.com/AndreLMPinto) da turma de jQuery Maio/2010:  

```javascript
jQuery.extend(jQuery.expr[':'], {
    prime: function (a, index) {
        function isPrime(num) {
            var numHalf = num / 2,
                counter, divCheck;
            if (num === 2) {
                return true;
            }
            if (num & amp; amp; lt; 2 || numHalf === Math.floor(numHalf) ||
                num !== Math.floor(num)) {
                return false;
            } else {
                for (counter = 3; counter & amp; amp; lt; = Math.sqrt(num); counter += 2) {
                    divCheck = num / counter;
                    if (divCheck === Math.floor(divCheck)) {
                        return false;
                    }
                }
                return true;
            }
        }
        return isPrime(index);
    }
});
```
Para usar a expressão:  

```javascript
$('#tabela2 td:prime').css( { 'background-color' : 'red' } );
```

Parabéns ao André pela implementação.  
