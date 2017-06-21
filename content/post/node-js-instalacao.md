+++
author = "Jaydson Gomes"
categories = ["Node.js"]
date = 2010-03-31T09:20:00Z
description = ""
draft = false
slug = "node-js-instalacao"
tags = ["Node.js"]
title = "Node.js - Instalação"

+++

Como comentado no post anterior, agora o objetivo é fazer um passo a passo para instalação do nodeJS em seu ambiente.  
Em teoria o node suporta todos os sistemas operacionais [POSIX](http://pt.wikipedia.org/wiki/POSIX) inclusive o Windows, mas segundo o site oficial, no momento o node está sendo testado no Linux, Mac e Solaris.  

Para rodar o node é necessário ter o [Python](http://www.python.org/) 2.4 ou superior instalado.  
Levando em consideração que o [V8](http://code.google.com/p/v8/) vem incluído no pacote do node, não existe nenhuma outra dependência.  
A instalação do node não é nada complexa, porém exige alguns cuidados.  
Estou no Ubuntu, e seguindo as instruções do site, de primeira não funcionou.  
Agradeço aqui ao [Ricardo Tomasi](http://twitter.com/ricardobeat) pelas dicas sobre a instalação do node ;)  

São poucos passos, abra o terminal e  execute estes simples comandos:  
``` 
./configure
make
make install
```
Se tudo funcionou, ou seja, não acusou nenhuma falha [FAIL] é porque o nodeJS foi instalado corretamente.  
No meu caso a falha ocorreu porque eu não tinha nenhum compilador GCC e G++.  
Bastou abrir o Synaptic, selecionar a categoria Development, procurar por G++ e pronto.  
G++ instalado agora o próximo passo é executar:  
```
sudo make test
```

Feito. Agora vamos criar um clássico Hello World com o node.  
Parto do princípio que tudo deu certo até aqui, e que o node está instaldo e pronto pra usar.  
Crie um arquivo Javascript com o seguinte conteúdo:  

```javascript 
var sys = require('sys'),
http = require('http');
http.createServer(function (req, res) {
        setTimeout(function () {
               res.writeHead(200, {'Content-Type': 'text/plain'});
               res.write('Hello World');
               res.close();
        }, 2000);
}).listen(8000);
sys.puts('Server running at http://127.0.0.1:8000/');
```

Salve o arquivo com o nome que desejar dentro da pasta test que foi criada na raiz do node.  
Para testar:  
```javascript
node nome_do_seu_arquivo.js
```
A mensagem no terminal deve ser essa: "Server running at http://127.0.0.1:8000/"  
Acesse com o Browser o endereço para visualizar a aplicação Hello World em funcionamento.  
Bom, com a breve introdução e com esse exemplo é possível ter uma ideia do que é nodeJS. O próximo passo é estudar a [Documentação](http://nodejs.org/api.html) que é bem rica.  
Fico por aqui, qualquer dúvida entrem em contato que tentarei ajudar. ;)


