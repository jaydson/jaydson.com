+++
author = "Jaydson Gomes"
categories = ["PHP"]
date = 2010-09-06T07:23:00Z
description = ""
draft = false
slug = "php-teste-unitario-com-phpunit"
tags = ["PHP"]
title = "PHP - Teste Unitário com PHPUnit"

+++

Seguindo a ideia do [último post](/php-debugando-aplicacoes-com-xdebug-e-netbeans/), onde falei sobre o equívoco de alguns em achar que PHP não é uma linguagem para sistemas robustos, vou falar brevemente sobre o PHPUnit.
Teste unitário não é nem questão de ferramenta e sim do próprio programador, ou da política da empresa onde se trabalha.
Digo isso, porque ainda é comum hoje em dia modelos de empresas que utilizam o famoso [XGH](http://gohorseprocess.wordpress.com/extreme-go-horse-xgh/), onde nada importa, a não ser ganhar dinheiro e entregar o sistema.  

No mundo PHP, o [PHPUnit](http://www.phpunit.de/) é a principal ferramenta para testes unitários.
A instalação é bem simples, e utilizando o NetBeans como IDE fica mais fácil ainda.
Abaixo segue um passo a passo:

Para instalar o PHPUnit é preciso ter o [Pear](http://pear.php.net/), caso não tenha:  
```
sudo apt-get install php-pear
```

Após instalar o Pear, é necessário registrar o canal no ambiente:
```
sudo pear channel-discover pear.phpunit.de
```

E enfim, instalar o PHPUnit
```
sudo pear install phpunit/PHPUnit
```

Pronto, se tudo deu certo até aqui, o PHPUnit foi instalado com sucesso!  
Agora vamos configurar para usar no NetBeans.  

OBS: Estou usando a última versão do NetBeans, que hoje é 6.9.1  
- Tools > Options e selecione a aba PHP
- No campo PHPUnit source informe o caminho do PHPUnit, no meu caso **/usr/bin/phpunit**

Pronto.  
Agora para testar crie um diretório em sua aplicação com o nome que desejar. Esse diretório será o repositório de seus testes.  
Crie uma classe, e clique com o botão direito em cima.  
Tools > Create PHPUnit tests  
Selecione o diretório criado como repositório dos testes.  
A partir de agora todos seus testes serão armazenados neste diretório.  
Para criar novos testes, basta repetir o procedimento.  

Claro que nem tudo é tão simples, é preciso entender como funciona um teste unitário, e entender a ferramenta.
Para isso > [http://www.phpunit.de/manual/3.4/en/index.html](http://www.phpunit.de/manual/3.4/en/index.html)

Boa sorte, e espero ter ajudado.  
