---
author: Jaydson Gomes
categories:
- CSS3
date: "2009-05-04T21:04:00Z"
description: ""
draft: false
slug: hacks-css
tags:
- CSS3
title: Hacks CSS
---

E aí pessoal, seguinte...ontem me deparei com algo realmente interessante, e fiquei até meio assustado pelo fato de eu não saber da existência.  
O negócio é que todos desenvolvedores web sofrem com as peculiaridades de cada Browser, e se tratando do IE, nem se fala.  
Eu já tinha ouvido falar dos Hacks, e pesquisando sobre o assunto encontrei no [Blog do Gustavo Paes](http://blog.gustavopaes.net/2007/hacks-css-para-ie6-e-ie7/) várias dicas legais.  
O que achei mais interessante foi o Hack em que duplicamos um atributo da classe CSS, colocando um "coringa" na frente do nome.  
Isso serve para que a propriedade seja alterada apenas no IE.  
Exemplo:  

```css
#elemento {
height: 50px;
*height: 30px; /* altera propriedade do IE6 e IE7 */
_height: 20px; /* apenas IE6 */
}
```

Mas nem tudo é maravilha...  
Temos apenas um pequeno detalhe:  
Esta Gambiarra solução não passa na validação W3C, então se isso é necessário, busquem outra solução.  

Por hora é isso.  
