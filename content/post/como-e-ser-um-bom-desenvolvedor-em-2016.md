+++
author = "Jaydson Gomes"
categories = ["Devaneios", "JavaScript", "Software"]
date = 2016-10-06T17:47:00Z
description = ""
draft = false
image = "/images/2016/10/javascript-2016-1.jpg"
slug = "como-e-ser-um-bom-desenvolvedor-em-2016"
tags = ["Devaneios", "JavaScript", "Software"]
title = "Como é ser um bom desenvolvedor em 2016"

+++

Circulou nesta semana [mais um artigo](https://hackernoon.com/how-it-feels-to-learn-javascript-in-2016-d3a717dd577f#.r5c5nznev) que aborda o "pseudo-caos" em que se encontra o ecossistema **JavaScript** e **FrontEnd** nos dias atuais.  
Não foi a [primeira](https://medium.com/@ericclemmons/javascript-fatigue-48d4011b6fc4#.2ujgvno70), [segunda](https://medium.com/@matthiasak/state-of-the-union-js-d664bdbffd14#.blipsvapc), terceira, e nem será a última vez que veremos um artigo como esse. Na minha opinião, isso não é de todo ruim.  
Abordagens assim são importantes e fazem parte do ciclo natural de evolução.  

Porém, vale lembrar que nada é verdade absoluta. Muita afirmação feita em torno do tema acaba sendo tendenciosa e até infundada.  
Fora isso, artigos assim costumam mostrar a visão do escritor, o que não reflete 100% a opinião de toda a comunidade de desenvolvedores.  

## TL;DR
> *Always bet on **JS**.*  
> *Eich, Brendan - criador do JavaScript*

Sério, pare de reclamar e vá aprender JavaScript logo.  
Não é pré-requisito utilizar as ferramentas e bibliotecas mais modernas.  
Sim, existe uma infinidade delas por aí, mas criar para a Web ainda é uma tarefa simples, prazeroza e divertida.  
Aprenda JavaScript, HTML, CSS e tu estará pronto para fazer o que qualquer outro desenvolvedor faz.  

## O JavaScript é diferente
Eu costumava dizer isso para um antigo chefe, que teimava em querer aplicar o seu conhecimento em linguagens como `C` e `Perl` no mundo JavaScript.  
Foi difícil convencê-lo e, de fato, não sei se em algum momento ele realmente entendeu a diferença.  
Aplicar conceitos de desenvolvimento de *software* é uma coisa, querer usar [RPM](https://en.wikipedia.org/wiki/RPM_Package_Manager) para deploy de arquivos JavaScript é outra.  

O JavaScript roda em um abiente inóspito.  
![Planta em ambiente inóspito](/images/2016/10/javscript-hostile-environment-1.jpg)
<center>*Planta em ambiente inóspito*</center>

Existem diferentes versões de *Browsers*, diferentes versões de *engines* e diferentes versões da linguagem.  
Além disso,  no lado do cliente, o JavaScript nunca está sozinho.  
O trio principal que compõe a *stack* FrontEnd ainda conta com nosso velho amigo **HTML** e com o **CSS**.  
Essa *stack* é tão amarrada que muitos acabam confundindo suas responsabilidades e funcionalidades.  
Outra coisa: A evolução do HTML e do CSS depende da [W3C](https://www.w3.org/). Já o JavaScript, conta com um comitê, denominado [TC39](https://github.com/tc39), que é formado por especialistas da linguagem.  
O principal objetivo desses caras é não quebrar a Web, e acreditem, isso não é uma tarefa fácil, vide o [caso do `array.contains` que foi removido da especificação ES2015](https://esdiscuss.org/topic/having-a-non-enumerable-array-prototype-contains-may-not-be-web-compatible), pois quebraria centenas de milhares de sites.  

## Era pós-jQuery e React
![Elliot e Mr. Robot](/images/2016/10/mr-robot-season-2-premiere.jpg)
<center>*Elliot e Mr. Robot*</center>
Lembram como era antes do [jQuery](https://jquery.com/)?  
Durante anos ficamos estagnados em um ambiente pobre de desenvolvimento, onde não existiam ferramentas apropriadas e precisávamos desenvolver o dobro ou triplo do tempo para tornar um site compatível em todos os *Browsers*.  
O jQuery iniciou o que seria uma revolução que mudou esse cenário.  
Atualmente o jQuery pode ser considerado irrelavante para muitos, mas uma breve analisada no Google Trends mostra que a biblioteca ainda continua firme, apesar de uma pequena queda.  

<script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/760_RC01/embed_loader.js"></script> <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"jquery","geo":"","time":"today 5-y"},{"keyword":"/m/012l1vxv","geo":"","time":"today 5-y"}],"category":0,"property":""}, {"exploreQuery":"q=jquery,%2Fm%2F012l1vxv"}); </script> 

[jQuery no npm](https://www.npmjs.com/package/jquery) hoje (Outubro 2016):  
```
91,169 downloads in the last day
497,494 downloads in the last week
2,151,927 downloads in the last month
```

[React no npm](https://www.npmjs.com/package/react) hoje (Outubro 2016):  
```
97,471 downloads in the last day
518,017 downloads in the last week
2,230,489 downloads in the last month
```

Qual a conclusão chegamos com esses números?  
Não sei ao certo. Mas podemos notar que não existe uma diferença muito grande entre a popular do momento e a popular de outrora.  
Concluo que os 2 estão sendo utilizados de diversas maneiras para resolver o problema de milhares de desenvolvedores pelo mundo.  
E é isso que deve ser feito.  
Precisa resolver um problema? Vai lá e resolve, da maneira que achar mais conveniente. Não use ferramenta X ou Y baseado no fator *hype*.  

Desde o surgimento do jQuery eu sempre defendi o mesmo que citei acima: Aprenda JavaScript.  
Este deve ser o objetivo. Para se tornar um bom desenvolvedor, aprenda JavaScript.  
No próximo ano o React pode não ser a biblioteca do momento, mas eu garanto que as versões novas do JavaScript estarão rodando em todos os *Browsers*.  

## No BackEnd não é tão fácil
![Easy like sunday morning](/images/2016/10/easy-backend-1.jpg)
<center>*Easy like sunday morning*</center>
O artigo "How it feels to learn JavaScript in 2016" é baseado no artigo "It's The Future", que apresenta a dificuldade de desenvolver aplicações BackEnd nos dias atuais.  
Fiquei aliviado quando li o artigo orginal, pois o meu primeiro pensamento foi exatamente esse: Peraí, ninguém notou que o "problema" não é só com o FrontEnd, mas sim com todo o ecossistema de desenvolvimento de software?  

Desenvolver qualquer sistema/site/etc hoje pode se tornar uma tarefa difícil.  
Micro-serviços? Docker? Containers? Nginx? Apache? Integração contínua? Cloud? Testes? Amazon?  
As possibilidades são infinitas, assim como no mundo FrontEnd.  
Nosso papel como desenvolvedor é justamente ponderar e escolher o que está mais de acordo com a necessidade em questão, *skill* do time e qualquer outra métrica que se aplique à sua empresa.  

## Conclusão
A [resposta do Addy Osmani](https://medium.com/@addyosmani/totally-get-your-frustration-ea11adf237e3#.41c41occ3) ao artigo citado no início do post é excelente:  
> *I encourage folks to adopt this approach to keeping up with the JavaScript ecosystem: **first do it, then do it right, then do it better***.  
> *Osmani, Addy*

É bem isso. Primeiro faça, depois faça direito, e então faça melhor.  

Para ser um bom desenvolvedor em 2016 basta fazer o que precisa ser feito.  
Existe um mar de possibilidades e não há sinal de que o ecossistema irá parar de crescer.  
Saber escolher as ferramentas corretas é a chave para o seu sucesso como desenvolvedor.  
Não use por usar. Não escolha por escolher. Não escolha porque alguém escolheu.  


## Links úteis e referências:  
[How it feels to learn JavaScript in 2016](https://hackernoon.com/how-it-feels-to-learn-javascript-in-2016-d3a717dd577f#.r5c5nznev)  
[It's The Future](https://circleci.com/blog/its-the-future/)  
[State of the Union.js](https://medium.com/@matthiasak/state-of-the-union-js-d664bdbffd14#.blipsvapc)  
[Javascript Fatigue](https://medium.com/@ericclemmons/javascript-fatigue-48d4011b6fc4#.2ujgvno70)  
[JavaScript fatigue fatigue](http://www.2ality.com/2016/02/js-fatigue-fatigue.html)  
[Everything is fine with JavaScript](http://www.macwright.org/2016/10/04/everything-is-fine-with-javascript.html)
