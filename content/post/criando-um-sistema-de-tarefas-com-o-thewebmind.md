+++
author = "Jaydson Gomes"
categories = ["PHP", "TheWebMind"]
date = 2010-02-16T08:21:00Z
description = ""
draft = false
slug = "criando-um-sistema-de-tarefas-com-o-thewebmind"
tags = ["PHP", "TheWebMind"]
title = "Criando um sistema de tarefas com o TheWebMind"

+++


Hoje começo uma série de posts onde pretendo mostrar o poder do TheWebMind para criação de uma Aplicação.
Com o [último release](http://thewebmind.org/download), uma das principais novidades é o módulo nativo [Zend Models](http://docs.thewebmind.org/index.php?title=Modules#Native_ZendModels), que gera uma estrutura [MVC ](http://pt.wikipedia.org/wiki/MVC) utilizando o[ Zend Framework.](http://framework.zend.com/)  

Atualmente o TheWebMind encontra-se na versão [Pre-Alpha](http://code.google.com/p/webmind/source/browse/#svn/tags/pre-alpha-2.0.0), isso quer dizer que ainda não está totalmente estável, ainda possui bugs e melhorias a serem implementadas.
Mas com o que temos hoje, é possível fazer muita coisa. E é isso que quero compartilhar.  

Parto do princípio que quem estiver seguindo o tutorial já saiba o que é o [TheWebMind](http://thewebmind.org/index.php), e conheça a teoria por traz de tudo.  
Caso contrário acesse a página da documentação: [http://docs.thewebmind.org/index.php?title=Main_Page](http://docs.thewebmind.org/index.php?title=Main_Page)  

Minha proposta é criar um sistema simples de tarefas.  

<!-- more -->
**Requisitos:**  
O sistema deve permitir o cadastro de usuários.  
O usuário deve ter nome.   
A tarefa deve possuir título, descrição, data e um usuário vinculado.  
O sistema deve permitir o cadastro de várias tarefas para um usuário.  
O sistema deve possuir interface para edição e visualização dos dados, tanto de usuários como de tarefas.  
Resumindo, é um sistema bem simples, onde o usuário cadastra suas tarefas.  

## Passo 1 - Criando um projeto no TheWebMind
Para criar um projeto, acesse o menu _**File > New Project**_ e preencha os dados do projeto.  
OBS: Certifique-se de que você tem um banco de dados instalado e configurado  no seu server, e preencha corretamente os dados, informando o endereço, nome, porta, usuário e senha do banco de dados.  
São estas informações que o TheWebMind utiliza para gerar as tabelas.  

## Passo 2 - Escrevendo em WML
Criado o projeto, vamos escrever o código [WML ](http://docs.thewebmind.org/index.php?title=Web-Mind-Language)que atenda aos requisitos.  
A sintaxe da linguagem WML é baseada no conceito NLP (Natural Language Processing), que consiste basicamente em ser semelhante a linguagem humana natural(Português, Inglês, Espanhol, etc).  
Veja mais detalhes na documentação: [http://docs.thewebmind.org/index.php?title=Web-Mind-Language](http://docs.thewebmind.org/index.php?title=Web-Mind-Language)  
```
Sabemos que o usuario t+em nome:string(100);
A tarefa tem título:string(100);
A tarefa tem descrição:text();
A tarefa tem data:date();
O usuario tem tarefa;
```

## Passo 3 - Visualizando as saídas
Clique no botão compilar localizado na barra de tarefas acima do editor.  
Depois de "compilado" o projeto, você poderá ver as saídas como diagrama ER, Dicionário de dados, e o código SQL no painel de abas logo abaixo do editor.  

## Passo 4 - Gerando o projeto
Para gerar o projeto clique no botão gerar também localizado na barra de tarefas acima do editor.  
Uma tela de Wizard abrirá, guiando o usuário até o final.  
No Step 1 selecione a segunda opção, que indica o banco de dados de desenvolvimento previamente cadastrado na tela de criar o projeto.  
Avance para o próximo passo clicando no botão **_Next_**.  
Uma tela com todos os módulos será exibida no Step 2, selecione o ZendModels e avance para o próximo passo.  
No Step 3 _existem 2 opções relacionadas ao que o TheWebMind irá fazer em relação ao banco de dados.  
Esta opção deve ser cuidadosamente selecionada, pois se você selecionar a opção "be replaced" , o TheWebMind irá deletar a tabela existente, assim como todos os seus dados e criará uma nova com as alterações necessárias.  
A opção "be skipped" ignora qualquer alteração na base de dados.  
Agora clique em _Finish, e acompanhe a tela onde o TheWebMind mostra tudo que está acontecendo, como cópia de arquivos necessários, criação de tabelas, etc.  

Pronto. Você acabou de criar um sistema com o TheWebMind.  

## Passo 5 - Visualizando o projeto gerado
Feito todo o trabalho, o TheWebMind irá exibir a mensagem "**Finished**, the project's been generated **here**".  
Uma tela com a arvore de arquivos gerados será exibida. É possível ver o conteúdo de um arquivo ao seleciona-lo.  
Acima da árvore, clique no botão "**_Explore Files_**" , este o conduzirá até a página onde a Aplicação foi gerada.  

## Passo 6 - Testando a Aplicação
Seguindo esses passos temos um simples sistema de tarefas funcionando.  
Para testar publiquei a aplicação gerada aqui: [http://source.jaydson.com/TaskList/  
](http://source.jaydson.com/TaskList/)O ZendModels gera os formulários da aplicação, isso serve para testarmos se tudo esta funcionando corretamente.  

Bom, este foi um pequeno tutorial de como fazer um sistema simples com o TheWebMind utilizando o ZendModels.  
Qualquer dúvida entrem em contato ou comentem.  
Abaixo segue o link para download da aplicação gerada no exemplo, mas para um melhor entendimento do TheWebMind sugiro que vocês façam o [download do TheWebMind](http://thewebmind.org/download), e sigam todos os passos descritos acima.  
É muito fácil.  

Vejam um outro exemplo no blog do [@felipenmoura](http://twitter.com/felipenmoura) : [http://felipenascimento.org/en/portugues-brasil-criando-uma-aplicacao-funcional-com-thewebmind/](http://felipenascimento.org/en/portugues-brasil-criando-uma-aplicacao-funcional-com-thewebmind/)
