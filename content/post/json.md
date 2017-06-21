+++
author = "Jaydson Gomes"
categories = ["JavaScript", "JSON"]
date = 2009-05-04T21:03:00Z
description = ""
draft = false
slug = "json"
tags = ["JavaScript", "JSON"]
title = "JSON"

+++

Bom, eu até já tinha ouvido falar do tal do [JSON](http://json.org), mas nunca havia parado pra estuda-lo e ver o seu funcionamento.  
Após ir em uma entrevista de emprego, onde os entrevistadores comentaram a respeito do JSON, eu fiquei mais curioso sobre o assunto.  
O que acontece é que JSON esta na crista da onda...quero dizer que é uma tecnologia que tem o seu uso difundido, e isto se deve pelo fato de JSON ser simples e poderoso.  

JSON é uma alternativa para XML, ele também exerce o mesmo papel que o XML como formato para transporte de dados.  
Uma coisa importante para a aceitação do JSON foi por ser mais fácil escrever um analisador JSON, por exemplo em JavaScript através da função eval().  
Vários nomes de peso adotaram JSON, posso citar alguns que sei: **Google**, **Yahoo**, **Meebo**...  
Perguntas que eu me fazia antes de estudar JSON:  

_Ta, mas qual biblioteca devo baixar?_  
_Como assim notação de objetos?_  
_JSON é Javascript?_  

Bom, em primeiro lugar, eu consegui fazer bastante coisa sem baixar um KB sequer, ou seja, não precisei baixar nenhuma biblioteca.  
JSON é um acrônimo para JavaScript Object Notation.  
Segundo o próprio [site do JSON](http://www.json.org/json-pt.html) JSON é:  
"Uma formatação leve de troca de dados. Para seres humanos, é fácil de ler e escrever. Para máquinas, é fácil de interpretar e gerar.  
Está baseado em um subconjunto da linguagem de programação JavaScript, Standard ECMA-262 3a Edição - Dezembro - 1999.  
JSON é em formato texto e completamente independente de linguagem, pois usa convenções que são familiares às linguagens C e familiares, incluindo C++, C#, Java, JavaScript, Perl, Python e muitas outras. Estas propriedades fazem com que JSON seja um formato ideal de troca de dados."  

E por último, a resposta anterior já respondeu...JSON é um subconjunto da notação de objeto de JavaScript, mas seu uso não requer JavaScript exclusivamente.  

Agora, vamos a parte boa: o código! Como funciona isso ???  
Primeiro vamos ver como criar um JSON:  

JSON está constituído em duas estruturas:  
* Uma coleção de pares nome/valor.  
Em várias linguagens, isto é caracterizado como um object, record, struct, dicionário, hash table, keyed list, ou arrays associativas.  

Agora que já vimos como é, vamos a um exemplo:  
```
var myJSONObject = { "cliente": [
	{"nome": "Joao da Silva", "idade": "25", "sexo": "masculino"},
	{"nome": "Juca da Silva", "idade": "36", "sexo": "masculino"},
	{"nome": "Maria Madalena", "idade": "18", "sexo": "feminino"}]
};
```

No código acima, criamos uma estrutura de cliente, contendo valores para 3 clientes.
Agora vamos transformar isso em um objeto Javascript.

```
var myObject = eval(myJSONObject);
document.write('Nome: ' + myObject.cliente[i].nome + "<br>");
document.write('Idade: ' + myObject.cliente[i].idade + "<br>");
document.write('Sexo: ' + myObject.cliente[i].sexo + "<br>");
}
```
Como podemos notar no código acima, depois de converter o texto JSON em Objeto, podemos acessar os seus dados facilmente.  

Isso foi o básico. Já fiz algumas coisas mais complexas, e estou preparando um novo Post sobre JSON + AJAX + PHP + Banco de Dados...  
Aguardem, e qualquer dúvida postem ai, ou me mandei e-mail.  

O/
