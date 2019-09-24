---
author: Jaydson Gomes
categories:
- AppCache
- HTML5
- JavaScript
date: "2011-10-28T00:05:00Z"
description: ""
draft: false
slug: html5-application-cache
tags:
- AppCache
- HTML5
- JavaScript
title: HTML5 Application Cache
---

Tudo em torno do [HTML5](http://www.w3.org/TR/html5/) é muito promissor e excitante.  
Umas das coisas que acho mais legal é a possibilidade "Offline".  
Estranho pensar nisso logo em 2011, com a evolução que temos, com cada vez mais serviços na Internet, Cloud, etc.,não é?  
A resposta é NÃO.  

[HTML5 Offline](http://www.w3.org/TR/offline-webapps/) é muito mais do que apenas trabalhar Offline, são várias possibilidades que antes só eram possíveis com workarounds, ou impossíveis.  
Hoje vou falar sobre uma dessas possibilidades: o [AppCache](http://www.html5rocks.com/en/tutorials/appcache/beginner/).  

Ao meu ver o AppCache não tem tido tanta atenção quanto outras features do HTML5, mas com certeza tem um grande potencial.  
O primeiro ponto que deve ser esclarecido é que o AppCache não serve apenas para rodar uma aplicação Offline.  
AppCache pode ser utilizado para uma das questões mais importantes no desenvolvimento Web: Performance.  
Sim, utilizando o AppCache é possível reduzir drasticamente o número de requisições de uma aplicação.  
Querem saber o mais legal?  
A grande maioria dos Browsers já suporta o AppCache.  
[Caniuse AppCache](http://caniuse.com/#search=appcache)  
Ou seja, já é possível, desenvolver aplicações web utilizando esta feature.  
E notem que os principais browsers mobile também estão na lista.  
Sobre o IE, bom... somente na versão 10. Mas nem perderei tempo falando sobre isso.  

## Como fazer?  
Precisamos entregar um arquivo manifest com o MIME type text/cache-manifest:  
Por convenção, a extenção do arquivo é .appcache.  
O manifest tem 3 seções opcionais:  
CACHE - Todos os arquivos que devem ser armazenados no cache  
NETWORK - Todas URLs que precisam ser acessadas pela Internet  
FALLBACK - Lista de URLs que devem ser usadas caso a Internet esteja indisponível  

Precisamos de um atributo na tag HTML:  
Na tag html basta indicar onde esta o seu manifest:  
```
<html manifest="manifest.appcache">
```
  
Um pouco de JavaScript:  
Temos um objeto para tratar o cache, ele é o _**window.applicationCache**_  
Com este objeto é possível monitorar o estado do cache.  
Eventos: cached,checking,downloading,error,noupdate,obsolete,progress,updateready  

## Alguns detalhes interessante sobre o AppCache
Os arquivos listados no manifest não estão sobre a regra de same origin policy, ou  seja, podemos listar URLs Crossdomain. 
Mas... isso não vale para SSL, ou seja, se estiver utilizando HTTPS, os arquivos listados no manifest devem obedecer a regra [same origin policy](https://developer.mozilla.org/en/Same_origin_policy_for_JavaScript).  
Mas... O Google Chrome ignora esta especificação, ou seja, independente de estar utilizando SSL ou não, é possível adicionar URLs Cross-Domain.  

O Browser só irá atualizar o cache caso o manifest tenha sido modificado.  
Por convenção, utiliza-se um comentário com a versão no manifest.  
Detalhe importante:  
Após a detecção de que o cache deve ser atualizado, o browser precisa buscar os novos arquivos.  
Ou seja, o usuário precisa atualizar a página 2 vezes.  
Para isso, se utiliza uma técnica JavaScript que detecta se existe uma nova versão, e então decide se quer baixar esta nova versão.  
```javascript
// Check if a new cache is available on page load.
window.addEventListener('load', function(e) {
    window.applicationCache.addEventListener('updateready', function(e) {
      if (window.applicationCache.status == window.applicationCache.UPDATEREADY) {
        // Browser downloaded a new app cache.
        // Swap it in and reload the page to get the new hotness.
        window.applicationCache.swapCache();
        if (confirm('A new version of this site is available. Load it?')) {
          window.location.reload();
        }
      } else {
        // Manifest didn't changed. Nothing new to server.
      }
    }, false);
}, false);
```

A página onde esta definido que a aplicação utilizará o manifest, mesmo não estando listada no manifest, **será** armazenada no cache.  
Isso pode gerar alguns problemas, dependendo do tipo de cache sua aplicação precisa. Para isso, existe na especificação uma regra que diz que arquivos com a diretiva ["no-store"](http://httpd.apache.org/docs/2.2/mod/mod_cache.html) definida no HEADER http sobrescreverá o cache local.  
(Obrigado ao [@miketaylr](http://twitter.com/#!/miketaylr) que me passou essa especificação).  

Bom pessoal, por hoje é isso.  
Espero ter passado de forma clara o que é, e para que serve o AppCache.  

## Referências deste artigo:  
[http://www.html5rocks.com/en/features/offline](http://www.html5rocks.com/en/features/offline)  
[http://www.html5rocks.com/en/tutorials/offline/whats-offline/
](http://www.html5rocks.com/en/tutorials/offline/whats-offline/)[http://www.html5rocks.com/en/tutorials/appcache/beginner/](http://www.html5rocks.com/en/tutorials/appcache/beginner/)  
[http://appcachefacts.info/](http://appcachefacts.info/)  
[http://www.whatwg.org/specs/web-apps/current-work/multipage/offline.html](http://www.whatwg.org/specs/web-apps/current-work/multipage/offline.html)  
[http://www.webdirections.org/blog/get-offline/](http://www.webdirections.org/blog/get-offline/)  
[https://developer.mozilla.org/en/Offline_resources_in_Firefox](https://developer.mozilla.org/en/Offline_resources_in_Firefox)  
[http://www.w3.org/TR/offline-webapps/](http://www.w3.org/TR/offline-webapps/)  
