+++
author = "Jaydson Gomes"
categories = ["SVN", "GIT"]
date = 2013-12-02T09:06:00Z
description = ""
draft = false
image = "/images/2016/09/migrando-svn-git.jpg"
slug = "migrando-do-svn-para-o-git"
tags = ["SVN", "GIT"]
title = "Migrando do SVN para o GIT"

+++

Nem preciso falar das vantangens do GIT em relação ao SVN né, mas vou deixar registrado o que fiz para migrar um repositório gigantesco(600MB de arquivos estáticos) do SVN para o GIT.  
O processo em si na empresa foi bem delicado e trabalhoso, mas vou focar neste post apenas na parte técnica que visa fazer a migração.  

## Passo 1
Obviamente, foi necessário atualizar o repositório em questão, e bloquear o acesso de escrita.  
Desta maneira conseguimos garantir que ninguém mais faria qualquer alteração.  
Utilizei a ferramenta [svn2git](https://github.com/nirvdrum/svn2git), que facilita bastante a vida.  
Uma das premissas era ter todo o histórico de commits, por isso uma ferramenta como essa se fez essencial.  
Depois de apanhar um pouco para o svn2git, e descobrir quais parâmetros eram necessários, e alguns detalhes escondidos, tudo funcionou bem.  
O nosso repositório do SVN não era um repositório padrão(trunk, branches tags), então foi necessário adicionar o parâmetro _--notrunk_ no comando.  

## Passo 2
Outra coisa que tive que fazer foi criar um arquivo de autores.  
Para a importação, o svn2git mapeia os usuários do SVN para usuários do GIT, o que é muito útil.  
Basta criar um arquivo com a lista de todos os autores, neste formato:
```
(author) = author_name <author@email>
```

Um detalhe é que caso exista algum commit no SVN sem author (no author), o svn2git para e da o seguinte erro: Author: (no author) not defined in authors file.  
Bom, para resolver isso basta adicionar na lista de autores o seguinte: 
```
(no author) = no_author <no_author@no_author>
```

O comando para executar de fato o sv2git é esse: 
```
svn2git http://svn.example.com/path/to/repo --notrunk --nobranches --notags -v
```

## Passo 3
Depois disso, tive que ir buscar vários cafés, pois como falei, o repositório era realmente grande, e além disso, o log possuia um histórico de commits astronomicamente gigante.  
Creio que o processo deva ter levado mais de 2 horas para ser concluído.  

## Passo 4

Com o repositório criado, bastou adicionar a origem e fazer push: 
```
git remote add origin git@URL:repo.git
git push origin master
```

## Referências:  
[https://help.github.com/articles/importing-from-subversion](https://help.github.com/articles/importing-from-subversion)  
[http://git-scm.com/book/en/Git-and-Other-Systems-Migrating-to-Git](http://git-scm.com/book/en/Git-and-Other-Systems-Migrating-to-Git)  
[http://www.guyrutenberg.com/2011/11/09/author-no-author-not-defined-in-authors-file/](http://www.guyrutenberg.com/2011/11/09/author-no-author-not-defined-in-authors-file/)  
[http://stackoverflow.com/questions/3009738/what-does-this-svn2git-error-mean/4434188#4434188](http://stackoverflow.com/questions/3009738/what-does-this-svn2git-error-mean/4434188#4434188)  
[https://github.com/nirvdrum/svn2git/issues/41](https://github.com/nirvdrum/svn2git/issues/41)  
