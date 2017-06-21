+++
author = "Jaydson Gomes"
categories = ["AppCache", "HTML5", "JavaScript"]
date = 2011-11-03T20:25:00Z
description = ""
draft = false
slug = "html5-appcache-cache-control-no-store"
tags = ["AppCache", "HTML5", "JavaScript"]
title = "HTML5 AppCache - Cache-Control: no-store"

+++

No[ meu último post](http://jaydson.org/html5-application-cache), falei sobre como tudo no [HTML5](http://www.w3.org/TR/html5/) é legal, e especificamente sobre o [Application Cache](http://www.whatwg.org/specs/web-apps/current-work/multipage/offline.html).  
O legal de trabalhar com HTML5 é que tudo é muito novo.  
O ruim de trabalhar com HTML5 é que tudo é muito novo.  

O que quero dizer, é que HTML5 é uma tecnologia nova, e que muitas funcionalidades ainda estão em desenvolvimento.  
Creio que isso seja uma questão complicada para os Browsers, pois eles devem implementar estas especificações incompletas.  
Mas tudo isso faz parte da transição em que estamos, e de certa forma, isso é muito bom.  

Voltando ao AppCache, vou citar um dos problemas que encontrei utilizando essa feature, que julgo ter um grande potencial, se sofrer algumas alterações.  
Como falado antes, o AppCache não é uma feature que apenas permite que sua Web App rode Offline.  
O AppCache pode reduzir e muito o "peso" da sua App, reduzindo o número de requisições.  
Imagine que sua Web App tenha 6 arquivos JavaScript, 3 arquivos CSS, e várias imagens.  
Se nenhum destes arquivos sofre atualizações constantes, todos podem ser "AppCacheados".  
Tecnicamente isto quer dizer que se o total em KBytes de sua página é de 200K, esses 200K podem ser carregados diretamene do Cache.  
Sim, o Browser possui um mecanismo de Cache padrão, mas este cache não é controlado pelo desenvolvedor.  
Outro fator relevante é que nenhum Header do arquivo é levado em conta se a sua App está utilizando AppCache.  
Com exceção do Cache-Control:no-store.  
Ou não.  

Bom, na especificação temos alguns detalhes que já mencionei, mas o que mais tive problemas foi este:  
"A página onde esta definido que a aplicação utilizará o manifest, mesmo não estando listada no manifest, será armazenada no cache".  
Lembre que o AppCache também foi pensado para fazer uma App rodar Offline, então isso até faz sentido, mas gera outros problemas.  
Se o meu objetivo é reduzir o número de requisições, e minha página muda constantemente o seu conteúdo, essa regra acaba com a possibilidade de utilizar o AppCache.  
Ai chegamos em outra regra da especificação:  
"Com exceção da diretiva "no-store", os headers HTTP de cache são substituídas pelo Appcache"  
Problema resolvido então?  
Não!!!  
Por algum motivo o Google Chrome não respeita esta regra.  
Faça o teste, altere as configurações do seu servidor(no meu caso o Apache):  
```
	 <FilesMatch "(.html)$">
	 	Header set Cache-Control "no-store"
	 </FilesMatch>
```
O que fiz foi dizer que todos arquivos HTML devem vir com o Cache-Control "no-store".  
No Firefox e no Opera isso funciona perfeitamente. Todos arquivos listados no manifest para serem Appcacheados estão lá, com exceção da página atual.  
No Chrome, isso simplesmente não acontece. A página atual sempre vem do cache.  

Notem que esse problema pode ser resolvido se utilizarmos a funcionalidade padrão do Appcache: Atualizar o manifest.  
Mas isso nem sempre é possível, ou nem sempre eu quero fazer isso.  
Ficar na dependência de alterar um arquivo manifest para atualizar o conteúdo principal é uma coisa delicada.  

Bom, ainda estou pesquisando para ver se isso é um Bug do Chrome, ou se realmente o Google ignorou a regra do "no-store".  
