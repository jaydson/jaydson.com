+++
author = "Jaydson Gomes"
categories = ["Browsers"]
date = 2009-07-15T05:52:00Z
description = ""
draft = false
slug = "avaliacao-firefox-3-5"
tags = ["Browsers"]
title = "Avaliação Firefox 3.5"

+++

Para complementar o último post que falei sobre o [suporte nativo ao JSON no Firefox 3.5](/json-nativo-firefox-3-5/) resolvi compartilhar uma pequena e resumida avaliação que fiz  na Agência onde trabalho.
Vamos lá:  

## Estabilidade da aplicação:
Como em suas últimas versões o Firefox 3.5 continua sendo estável.  
Durante meus testes não houve travamento, ou perda de dados de nehum tipo, mesmo sendo testado ao seu extremo.  
Extremo: Muitas abas abertas(40 abas ativas), entre estas abas estavam aplicações pesadas que consomem de maneira elevada os recursos do Browser(Gmail, Meebo, Aplicações de teste de performance Javascript).  

## Performance em suas estações de trabalho:
A performance no Firefox 3.5 teve um aumento significativo e perceptível.  
Muito desse aumento é devido ao novo motor Javascript(TraceMonkey).  
A renderização HTML está bem mais rápida que em versões anteriores.  

## Melhorias e novas features:
No meu ponto de vista, as melhores melhorias são o suporte a HTML 5, novos recursos de Canvas e o novo motor Javascript.  
** HTML 5** - Todos os Browser modernos já estão suportando o HTML 5 inclusive o IE-8.  
Apesar de ainda não ter sido "liberado" pela W3C, é interessante para os desenvolvedores já se familiarizarem e estudarem o que poderá ser feito em um futuro não muito distante.  
** Canvas** - Foram implantadas novas funcionalidades, como:  suporte  HTML 5 text API, efeito Canvas Shadow e o método createImageData().  
** Novo Motor Javascript**: Em meus testes foi bem perceptivel a velocidade em que a nova engine processa o código Javascript. Ainda não é tão rápido quanto os navegadores Chrome e Safari, mas esta é a versão mais rápida do Firefox.  

## Novo motor Javascript
- Suporte nativo a JSON
- Web Work Threads
- Suporte HTML 5
- Suporte a novas features CSS
- Novos recursos DOM
- Novos recursos Javascript
- Novos recursos de rede
- Novos recursos de canvas
- Novos recursos SVG**

Para maiores detalhes:  
**Desenvolvedores** - [https://developer.mozilla.org/En/Firefox_3.5_for_developers](https://developer.mozilla.org/En/Firefox_3.5_for_developers)  
**Usuários**: [http://pt-br.www.mozilla.com/pt-BR/firefox/3.5/releasenotes/](http://pt-br.www.mozilla.com/pt-BR/firefox/3.5/releasenotes/)  

OBS: Na página para Usuários há um tópico sobre problemas que o Firefox 3.5 possui.  
Antes de instalar a nova versão, o aconselhavel é ler este tópico.  

## Compatibilidade com aplicativos:
A grande maioria das extensões funcionam no Firefox 3.5, porém algumas ainda não possuem suporte.  
Pelos meus testes, as principais para o desenvolvimento já possuem suporte, tais como: Firebug, WebDeveloper, JSView.  

É isso.  

Sou suspeito para falar de Firefox...porque sou um usuário apaixonado pela ferramenta, mas fui bem crítico na avaliação.
