---
author: Jaydson Gomes
categories:
- Apache
date: "2010-09-08T08:35:00Z"
description: ""
draft: false
slug: apache-criando-virtual-hosts
tags:
- Apache
title: Apache - Criando Virtual Hosts
---

Segundo a [documentação do Apache](http://httpd.apache.org/docs/1.3/vhosts/), o conceito de **Virtual Host** refere-se à prática de manter mais de um  servidor em uma máquina, diferenciados pelos seus nomes.  
Não vou me deter a falar sobre configurações em servidores de produção, mas sim em ambiente de desenvolvimento mesmo.  
Podemos criar um ambiente onde cada aplicação local pode ter seu próprio domínio.  

Exemplo:  

Para acessar a aplicação **TheWebMind** em meu ambiente local eu preciso acessar o seguinte endereço:  
**http://localhost/projetos/open-soruce/thewebmind/2.0/trunk**  


Não seria legal se eu pudesse acessar apenas com **http://mind** ?  
Bom, essa configuração é simples de fazer, bastando alguns segundos de seu tempo.  
Crie um arquivo com o nome do domínio desejado [ .conf] no diretório: **/etc/apache2/sites-available**  

No meu caso, foi **mind.conf<!-- more -->  

****O arquivo **deve conter o seguinte conteúdo:
```
<VirtualHost seu_dominio>
ServerAdmin webmaster@localhost
ServerAlias www.seu_dominio
DocumentRoot diretorio_da_sua_aplicação
</VirtualHost>
```

Feito isso, agora basta informar ao Linux que esse domínio é um domínio local.  
Edite o arquivo /etc/hosts e adicione a seguinte linha:  
```
127.0.0.1 localhost.localdomain localhost seu_dominio www.seu_dominio
```

UPDATE:  
Obviamente é necessário fazer um link simbólico ao arquivo em /etc/apache2/sites-enabled.  

Salve o arquivo e reinicie o Apache.  
Agora basta abrir o seu navegador e digitar o seu domínio.  