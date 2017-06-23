+++
author = "Jaydson Gomes"
categories = ["JavaScript", "Processos", "FrontEnd", "Terra"]
date = 2015-06-25T11:52:00Z
description = ""
draft = false
image = "/images/2016/09/processo-front-end.jpg"
slug = "processo-front-end-no-terra"
tags = ["JavaScript", "Processos", "FrontEnd", "Terra"]
title = "Processo front-end no Terra"

+++

No [Terra](http://terra.com.br), o nosso processo de desenvolvimento front-end evoluiu muito nos últimos anos.  
Relatei o histórico dessa evolução e como saimos de um processo totalmente falho para um processo eficaz e automatizado na palestra ["Processo de Desenvolvimento front-end - Do caos ao Sublime"](https://speakerdeck.com/jaydson/processo-de-desenvolvimento-frontend-do-caos-ao-sublime), também disponível em [vídeo](https://www.youtube.com/watch?v=tDGoXFM9afE).  
Nosso processo antigo baseava-se basicamente em uma coisa: fazer commit no [SVN](https://subversion.apache.org/).  
Em uma imagem:<br>  
![Go-Horse detected](http://i.giphy.com/GYU7rBEQtBGfe.gif)  

Esse processo _testless_, _horseness_, etc, provavelmente foi aplicado em muitas empresas no passado (e ainda é!?!?!?!), e [mudar a cultura é algo difícil](http://jaydson.com/cultura-maldita-no-desenvolvimento-de-software/).  
Isso tudo foi na era pré-[jQuery](http://jquery.com/) e eu ainda nem fazia parte da empresa, mas quando cheguei, esse era o cenário.  

Acredito que a base para se ter um produto de qualidade é garantir que o código também tenha qualidade.  
Um ambiente de desenvolvimento com tecnologia de ponta e processos bem definidos é uma das ferramentas que vai nos permitir fazer código consistente, consequentemente gerando produtos melhores.  

## Testar front-end é difícil
Front-end é diferente. Deal with it.  
Óbvio que muitos dos conceitos existentes em outras linguagens e plataformas são aplicáveis nesse mundo, mas não tudo.  
Para empresas em que a realidade não é o desenvolvedor full-stack isso fica muito claro. Basta falar com um desenvolvedor com brackground back-end para entender que pouca coisa pode ser reutilizada na camada do browser.  
Fazer qualquer tipo de teste no ambiente front-end não é uma tarefa fácil.  
A velha história: browsers, resolução de tela, sistema operacional, devices e plataformas diferentes são algumas das variáveis que temos nesse mundo complexo.  
A verdade é que agora estamos em um cenário totalmente diferente. 
Dizer que "é difícil" não é mais desculpa, e difícil não é impossível.  
Com o avanço da tecnologia na área de front-end e a quantidade de ferramentas disponíveis que temos atualmente, testar bem e de forma automatizada o seu produto, ter processos coerentes, seguir e aplicar conceitos sólidos de mercado, etc, é o mínimo.  

## Onde estamos no Terra
Estamos no ponto que ainda considero básico.   
- Todas aplicações são (ou devem ser) baseados no nosso Framework interno
- Todas aplicações devem possuir testes unitários
- Os testes unitários rodam no PhantomJS e no browser
- Todas aplicações são iniciadas com um scaffold básico que garante consistência
- Todas aplicações devem ser documentadas
- O build de todas aplicações são baseadas no Grunt
- O Grunt garante que todas aplicações possuam tasks básicas de validação e de build
- Cada aplicação é um projeto isolado no Github (usamos a solução [enterprise](https://enterprise.github.com/home))
- O deploy é feito de forma automática pelo noss CI server (Jenkins)
- O CI server obrigatóriamente roda as tasks de build e validação  

<br>
Pontos falhos que devemos melhorar:  

- O desenvolvedor pode desabilitar os testes antes de fazer deploy
- Grande parte dos testes da aplicação precisam de mão humana
- Não existe teste comportamental nos projetos (BDD)
- Não existe teste automatizado para múltiplos browsers, plataformas e dispositivos
- Não existe um dashboard para acompanhar o status de cada aplicação

## Como resolver os pontos falhos
_"O desenvolvedor pode desabilitar os testes antes de fazer deploy"_
O nosso CI server roda 2 tasks do Grunt: `ci-validate` e `ci-build`.  
Estas tasks são responsáveis por validar (testes, lint, style, etc) e fazer o build.  
O problema é que a task de validação precisa existir no projeto, e em alguns casos ela já foi desabilitada por algum desenvolvedor espertinho que não quis parar para resolver um erro simples, ou não quis validar os testes unitários.  
Uma possível solução seria criar um mecanismo de defesa que sempre incluisse a task de validação no CI server. Desta maneira, mesmo que o projeto não faça validação, o servidor irá fazer, e bloquear a deploy em caso de falha.  


_"Grande parte dos testes da aplicação precisam de mão humana"_  
A responsabilidade de testar uma interface fica dividida entre desenvolvedor, gerente, área de produtos e quem mais estiver envolvido no projeto.  
Isso é péssimo, nunca ninguém sabe ao certo o que validar, e tudo acaba sendo muito superficial.  
Uma possível solução seria integrar a cada projeto testes compartamentais, tornando assim o processo mais consistente e menos dependente de pessoas.  

_"Não existe teste automatizado para múltiplos browsers, plataformas e dispositivos"_  
O processo que temos hoje apenas roda testes no PhantomJS rodando em um Linux.  
Já é um primeiro passo, mas longe do ideal.  
Nosso próximo passo é integrar alguma solução como o [WebDriver](http://www.seleniumhq.org/projects/webdriver/).  

## Conclusão
Mesmo não sendo nada revolucionário, resolvi compartilhar o que fazemos, pois tenho certeza que será útil de alguma forma para alguém.  
Como falei antes, ainda considero esse processo muito básico e estamos correndo para chegar em um outro patamar em breve.  
Comparando com o processo anterior, evoluímos uns 10 anos em pouco mais de 2.  