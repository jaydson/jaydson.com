---
author: Jaydson Gomes
categories:
- PHP
date: "2010-09-05T11:13:00Z"
description: ""
draft: false
slug: php-debugando-aplicacoes-com-xdebug-e-netbeans
tags:
- PHP
title: PHP - Debugando Aplicações com Xdebug e NetBeans
---

Um grande equívoco de vários programadores que utilizam outras linguagens(C#, Java, etc.) que não PHP, é achar que quem desenvolve em PHP não possui as ferramentas necessárias para desenvolver sistemas robustos, com rapidez e qualidade.  
Tenho tido a oportunidade de trabalhar com .NET, além de PHP, e vejo que os programadores são muito dependentes de suas ferramentas. Não sou contra, bem pelo contrário, elas realmente ajudam muito.  
A plataforma Microsoft possui todas suas ferramentas muito bem integradas, e isso é um ponto positivo.  
Com o  Visual Studio por exemplo, é possível debugar a aplicação em tempo de desenvolvimento e em run-time.  
E isso juntamente com o Intellisense* o torna uma boa IDE.  

Intellisense:  
Basicamente é a referência da linguagem. O famoso auto-completar, que muitos não vivem sem, ou melhor, não trabalham sem.  

Mas voltando ao PHP que é o que nos interessa.  
Com PHP é possível fazer a mesma coisa que fazemos com outras linguagens.  
O NetBeans é uma excelente IDE, e possui uma série de recursos que ajudam no desenvolvimento.  
O auto-completar funciona muito bem, e podemos facilmente configura-lo para debugar nossas aplicações, e é isso que vamos ver agora.  

Requisitos:
Obviamente o Apache com PHP. Caso não tenha:  
```
sudo apt-get install apache2
sudo apt-get install php5
sudo apt-get install libapache2-mod-php5
sudo /etc/init.d/apache2 restart
```

Xdebug:  
```
sudo apt-get install php5-dev
sudo apt-get install php-pear
sudo pecl install xdebug
```

Adicione ao php.ini as configurações para o Xdebug:  
```
zend_extension="/usr/lib/php5/20090626+lfs/xdebug.so"
xdebug.remote_port = 9100
xdebug.remote_handler="dbgp"
xdebug.remote_host="localhost"
xdebug.remote_enable = On
```

Feito isso, reinicie o Apache e está tudo pronto.  
Agora com NetBeans abra o seu projeto, crie _break-points_ e faça o Debug de sua aplicação.  

Espero que o post tenha ajudado a desmistificar mais uma inverdade sobre o PHP.  
Lembrando sempre que o bom programador programa em qualquer linguagem, utiliza todas as ferramentas necessárias para resolver o seu problema e não se detêm a uma simples tecnologia.  
Abram a mente.  
