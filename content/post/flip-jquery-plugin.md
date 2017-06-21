+++
author = "Jaydson Gomes"
categories = ["JavaScript", "jQuery"]
date = 2009-05-10T08:34:00Z
description = ""
draft = false
slug = "flip-jquery-plugin"
tags = ["JavaScript", "jQuery"]
title = "Flip! Jquery Plugin"

+++

Mais um da série de plugins testados e avaliados.
Particularmente eu achei esse plugin muito legal!
Ele aplica um efeito de Flip em um elemento HTML. Ai vai da imaginação e criatividade do desenvolvedor para implementa-lo em seu sistema.
A idéia é aquela básica do Jquery, pouquissímas linhas, e um efeito impressionante.
Estou esperando o momento certo e a idéia surgir para usa-lo em algum sistema...

Vamos ver como fica o código:

```
<script type="text/javascript">
     $(document).ready(function () {
         $(".home").click(function () {
              $("#flipBox").flip({
                   direction: 'bt',
                  color: 'blue',
                  speed: 400,
                  content: ""
            });
       });
      $(".home").trigger("click");
});
</script>
```

Simples não?

No click do elemento com a classe "home"  invocamos o método **flip()** que aplica esse efeito no elemento com Id "flipBox".
Obs:  $(".home").trigger("click") só faz com que a animação aconteça no load da página.
Aqueles parâmetros são interessantes:



	
  * **direction**: Especifica em que direção vai ser o giro. Os valores suportados são 'tb', 'bt', 'lr', 'rl'

	
  * **color:** Define que cor de fundo o elemento terá após o giro.

	
  * **speed**: A velocidade da animação

	
  * **content**: O conteúdo que esse elemento terá após o giro.


Fora essas opções, ainda existem funções que podemos executar em algum evento do giro, como por exemplo:

	
  * **onBefore**:  Essa função é executada antes da animação começar.

	
  * **onAnimation**: Essa função é executada na metade da animação.

	
  * **onEnd**: Essa função é executada quando a animação termina.


Com esses eventos e opções podemos fazer muita coisa. A opção **content** por exemplo permite que seja passado um conteúdo que será exibido no elemento após a animação, então nada nos impede de carregar um conteúdo com Ajax e jogar dentro desse elemento. O céu é o limite.

Minha Avaliação: Nota 10.0  
Compatibilidade: Firefox 2.0+, IE 6+, Safari 3.0+, Chrome 2.0+, Opera  

Site oficial do Plugin: [ http://lab.smashup.it/flip/](http://lab.smashup.it/flip/)