+++
author = "Jaydson Gomes"
categories = ["JavaScript"]
date = 2011-11-17T12:41:00Z
description = ""
draft = false
image = "/images/2016/09/9593745025_8ceedd6861.jpg"
slug = "javascript-historia-e-ciencia-palestra-crockford"
tags = ["JavaScript"]
title = "JavaScript, História e Ciência - Palestra Crockford"

+++

Ontem parei para assistir mais uma palestra do [Douglas Crockford](http://www.crockford.com/).  
Já falei aqui que o cara é amado e odiado na comunidade JavaScript, e creio que existe muito mito em torno disso.  
Como programadores JavaScript, devemos prestar atenção em um fato: O Crockford entende muito da linguagem JavaScript.   Provavelmente mais que todos nós.  
Digo isso porque o embasamento nas teorias do Crockford fazem muito sentido, e apresentadas por ele, mostram que ele realmente entende do que esta falando.  
Depois de longos anos estudando JavaScript, ainda não me considero apto a dizer que sou ninja, e que sei tudo. Até porque isso seria muita presunção minha.  
O fato é o que o Crockford sim, parece ser ninja e parece saber tudo sobre a linguagem, então o mínimo que posso fazer é ouvir o homem, prestar atenção e correr atrás para quem sabe um dia ter o conhecimento suficiente para questionar as teorias do Douglas.

Durante a palestra o Crockford provou por a + b suas teorias. Abaixo compartilho algumas:  	

## Colocar a chave `{` na direita
Ex:
```javascript
block {
...
}
```

Por costume, eu sempre coloco na direita mesmo. Mas muitos programadores colocam na esquerda, assim:  
```javascript
block
{
...
}
```

A moral é que isso não importa. Na direita ou na esquerda, não importa...  
Exceto no JavaScript. Rá!  
Sim, para o JavaScript faz diferença, por um motivo simples.  
Vejam o código:  
```javascript
return
{
	ok : false
}
```

Este código irá falhar.  
Se queremos retornar um objeto literal, devemos sempre colocar a "**{**" na direita, porque neste caso o JavaScript retorna undefined.  
Uma diferença sútil, e o seu programa não irá falhar:  
```javascript
return {
	ok : false
}
```
	
## Usar sempre `===` ao invés de `=`
Sempre tive a pulga atrás da orelha com essa premissa do Crockford. Mas ele explicou o porque, e de fato faz sentido.  
O `==` não funciona muito bem no JavaScript. Até mesmo o Brendan sabia disso quando criou a linguagem.  
O que aconteceu foi que quando a linguagem foi padronizada, o Brendan tentou corrigir isso com o comitê, mas a Microsoft insistiu que não deveria ser feito.  
Porque diabos? Não sei.  
Mas o Brendan conseguiu ao menos implementar o `===`, então esse é o motivo de o porque sempre utilizar `===`.  
Alguns exemplos que provam a falha do `==` :  
```javascript
0 == '' //true  
'' == '0' //false  
0 == '0' //true  
false == 'false' //false  
false == '0' //true  
// E o mais bizarro de todos  
" trn " == 0 //true  
```

## Declarar variáveis sempre no topo do corpo da função  
Item bem interessante.  
O Douglas explica na palestra que o JavaScript é diferente de outras linguagens em relação ao escopo de variáveis.  
Em outras linguagens, devemos sempre declarar variáveis o mais próximo possível de onde vamos usa-las.  
No JavaScript é bem o contrário.  
Devemos sempre declarar as variáveis no topo da função, poque de fato é isso que acontece, essa é a primeira coisa que é feita no fluxo da execução.  

Antes do vídeo, deixo uma frase que achei muito interessante:  
>Se existe uma feature de uma linguagem que às vezes é problemática, e se ela pode ser substituída por uma outra feature que é mais confiável, então sempre use a feature mais confiável

Faz muito sentido.  

Bom, RECOMENDO que todos vejam este vídeo. Mesmo os que não gostam do Crockford. Alias, principalmente os que não gostam.  
Abram a mente, escutem, estudem, pesquisem.  
O título do post "JavaScript, História e Ciência" deve-se ao fato de que a palestra do Crockford é isso.  
Uma aula de JavaScript, obviamente. Mas não só isso. É uma aula de história, onde ele conta vários fatos sobre diversas pessoas e linguagens. E também é uma aula de ciência, onde ele consegue fazer um link muito inteligente entre as confusões do nosso cerébro e a programação.  
Vale muito a pena. Parem 1 hora e vejam.  

<iframe width="560" height="315" src="//www.youtube.com/embed/taaEzHI9xyY" frameborder="0" allowfullscreen></iframe>

