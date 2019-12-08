---
author: Jaydson Gomes
categories:
- Hugo
- Static Site Generator
date: "2017-07-05T23:41:02-03:00"
draft: false
image: /images/2017/07/hugo.jpg
slug: migrando-para-o-hugo
tags:
- Hugo
- Static Site Generator
title: Migrando para o Hugo
---

Há quase 10 anos criei este blog, na época utilizando o Blogspot.  
Ainda era um iniciante na área, mas sempre tive vontade de compartilhar o que aprendo.  
Escrever é uma das melhores maneiras de aprender sobre um determinado assunto ou aprimorar ainda mais o conhecimento.  

![Blogspot Jaydson](/images/2017/07/jaydson-blogspot.png)

Já usei [Wordpress.com](https://br.wordpress.com/), já usei [Wordpress local](https://wordpress.org/download/) (aquele configurado na mão), já usei [Ghost](https://github.com/tryghost/ghost), já usei [Jekyll](https://jekyllrb.com/), já usei [Octopress](http://octopress.org/), já usei (tentei usar) o [Docpad](https://docpad.org/) e até mesmo já usei o meu próprio gerador de site estático, o [Harmonic](https://github.com/JSRocksHQ/harmonic).  

Ok, até aqui já deu pra perceber uma certa insanidade de minha parte, porém, eu acho que essas mudanças são importantes.  
Trabalhamos com tecnologia, e estagnação, medo de mudança, ou qualquer outra coisa parecida não combina com a área, certo?  
Então por qual motivo eu usaria a mesma plataforma de Blog?  

![Hugo logo](/images/2017/07/hugo-logo.png)  

Atualmente, o [Hugo](https://gohugo.io) é de longe um dos melhores (se não o melhor) geradores de sites estáticos.  
O site é muito legal, a documentação é incrível, a arquitetura parece ser muito bem feita (não olhei o código), e o pessoal por trás do projeto parece ter cuidado de cada detalhe.  
Todas as features que eu queria em um gerador de sites estáticos, o Hugo tem, e inclusive tem muito mais coisas que ainda não parei pra ver como fazer.  
Algumas _features_: Temas, templates, taxonomia (isso parece ser muito legal!), LiveReload, Menus, Permalinks, Table of Contents.  

Outro ponto é que o Hugo é feito em Go, uma linguagem de programação que não tenho contato.  
Não pretendo meter a mão no código do Hugo, mas o fato de ser outro ecossistema ajuda a sair da zona de conforto (no meu caso, o JavaScript) e aprender coisas novas :)  

### Migração
A última plataforma que utilizei para o Blog foi o Ghost.  
A experiência de migração Ghost > Hugo foi rápida e indolor.  
Foi necessário exportar o blog utilizando o Labs do Ghost (gera um JSON).  
Utilizei o [ghostToHugo](https://github.com/jbarone/ghostToHugo), uma ferramenta escrita em Go que faz exatamente o que nome diz.  
Depois de instalado, bastou:  
```
$ ghostToHugo --dateformat "2006-01-02 15:04:05" export.json
```
Boom! Pronto! O único trick foi passar o parâmetro `dateformat` mesmo, pois caso não seja iformado os posts ficam com as datas quebradas.  
Outro detalhe pequeno foi a migração das imagens, mas isso resolvi com o velho SCP:  
```
scp -r jaydson.com:/var/www/ghost/content/images ./content/
```
Onde `./content` é a pasta que o Hugo utiliza para gerar o Blog.  
Como o path das imagens era o mesmo, bastou eu copiar a pasta `images` do meu velho blog para o novo.  

Eu resolvi deixar o blog com a mesma cara também.  
Eu estava utilizando o tema padrão do Ghost, o Casper, e encontrei o mesmo [tema portado para o Hugo](https://themes.gohugo.io/casper/).  

### Deploy
![Zeit Now](/images/2017/07/now.png)  
Por ser um gerador estático, eu poderia colocar em qualquer lugar, inclusive no GitHub, mas o time da [Zeit](https://zeit.co) tem feito coisas tão lindas, que resolvi usar o [Now](https://zeit.co/now) para fazer deploy de arquivos estáticos.  
Fazer deploy no Now é trivial, a única coisa que fiz foi automatizar o processo de build do Hugo + Now em um shell scrtip.  
Algo parecido com isso:  
```
#!/bin/sh
echo "[ Deleting old publication ]"
rm -rf public
mkdir public

echo "[ Generating Hugo website ]"
hugo --theme=casper

echo "[ Creating now alias config file ]"
echo "{
	\"alias\": \"jaydson.com\"
	\"name\": \"jaydson.com\",
}" > ./public/now.json

echo "[ Publishing to now ]"
cd ./public && now && now alias
```

### Conclusão
Era isso pessoal, quem sabe em 1 mês eu troque para uma solução de gerador de [site estático em Rust](https://github.com/cobalt-org/cobalt.rs), resolva criar um novo em JavaScript, ou volte para o Wordpress, mas por enquanto vou blogando com o Hugo 🤔  
E agora, deploy!  
![Deploy Hugo Now](/images/2017/07/deploy-hugo-now.png)

Quem quiser migrar o seu blog para o Hugo, ou quer ver como ficou, tá tudo lá no meu GitHub: [https://github.com/jaydson/jaydson.com](https://github.com/jaydson/jaydson.com)  