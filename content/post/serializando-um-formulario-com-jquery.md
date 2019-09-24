---
author: Jaydson Gomes
categories:
- jQuery
- JavaScript
date: "2009-06-15T06:47:00Z"
description: ""
draft: false
slug: serializando-um-formulario-com-jquery
tags:
- jQuery
- JavaScript
title: Serializando um formulário com jQuery
---

Buenas pessoal!

Hoje vim falar sobre um dos métodos que acho bem interessante no Jquery, o [serialize()](http://docs.jquery.com/Ajax/serialize).
Como o próprio nome já diz, esse método serializa um conjunto de inputs de um formulário em uma string.
Essa string é padronizada e compatível com  a maioria das linguagens server-side.
Isso é muito útil por exemplo quando queremos enviar uma série de dados para o servidor com Ajax.

**Como fazer?**

Bom, começamos criando o formulário:

```
<form action="minha_pagina.php" id="meu_formulario">
<input type="text" name="input_1">
<input type="text" name="input_2">
<input type="text" name="input_3">
</form>
```

Note que criamos um formulário de maneira tradicional, porém omitimos o atributo method na tag <form>, pois esse será tratado mais adiante.

**Bom, e agora como Serializar?**

Com uma linha o Jquery permite que façamos isso, vamos ao exemplo:

```
var formdata = $("#meu_formulario").serialize();
```

Agora a variável formdata é uma string serializada mais ou menos como essa:

input_1=valor1&input_2=valor2&input_3=valor3

A string fica com esse formato de chave/valor concatenadas com "&".
Agora que temos a string, basta passa-la para o servidor. Como fazer isso? De maneira bem simples com o método [Ajax()](http://docs.jquery.com/Ajax/jQuery.ajax#options) do Jquery:

```
$.ajax({
  type: "POST",
  url: form.attr('action'),
  data: formdata,
  success: function(msg){
  alert('Sucesso!');
}});
```

Lembram que omitimos o atributo method do form?
Fizemos isso porque estamos fazendo um requisição Ajax usando o método Post, de qualquer maneira ele seria ignorado em nosso exemplo.

Vamos ao Ajax:
**type - **Especifica o método de como os dados serão enviados ao servidor. Em nosso exemplo estamos usando POST.
**url **-  Especifica para qual a página os dados serão submetidos. No nosso exemplo estou pegando o atributo action do formulario, o que fará com que os dados sejam submetidos para o arquivo minha_pagina.php.
**data** - Os dados que serão submetidos. A string serializada é passada aqui.
**success** - Função que será executada quando obtivermos sucesso. No exemplo, um alerta.

Pronto!

Criamos um formulário, serializamos todos os inputs em uma string, enviamos todos os dados para um página PHP via Ajax.
Simples não?

Por hoje é isso.

Qualquer dúvida postem aí.