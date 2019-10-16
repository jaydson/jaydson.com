---
author: Jaydson Gomes
categories:
- blog
- dweb
- web
date: "2019-09-30T09:30:17Z"
draft: false
image: /images/2019/09/migracao-twitter-blog.jpg
slug: como-migrei-10-anos-de-tweets-para-o-meu-blog
tags:
- blog
- web
- dweb
title: Como migrei 10 anos de tweets para o meu blog
---

Há pouco mais de um ano [relatei aqui no blog](https://jaydson.com/social-detox-rehab/) o meu social detox/rehab.  
Em resumo, deixei de usar redes sociais (ainda vou escrever sobre os benefícios de estar fora das redes).  
O Twitter sempre foi a rede onde eu fui mais ativo, tanto que em 10 anos criei mais de 10.000 *tweets*.  
Um dos principais motivos para a minha saída das redes sociais está muito mais ligado ao consumo, ou seja, rolar as *timelines*.  
Mas a criação de conteúdo é algo que quero manter, para isso que serve esse blog.  
O que fazer com os 10.000 tweets? Claro, muita coisa não serve para nada, mas o conteúdo é meu e quero ter o controle.  
Sendo assim, cheguei no desafio: __Migrar todo conteúdo criado no Twitter por mim nos últimos 10 anos para o meu blog__.  

## TL;DR
👉 Migrei meus tweets para o meu blog: [https://twitter.jaydson.com](https://twitter.jaydson.com)  
👉 Foi um processo divertido  
👉 Criei um projeto open-source para que outras pessoas também possam fazer: [tweets-to-md](https://github.com/jaydson/tweets-to-md)  

## É possível ter acessos aos seus dados no Twitter?
Sim 👍  
Para quem tiver interesse, deixo aqui o link de ajuda para fazer isso: [https://help.twitter.com/en/managing-your-account/how-to-download-your-twitter-archive](https://help.twitter.com/en/managing-your-account/how-to-download-your-twitter-archive).  
O Twitter nos dá a opção de baixar nossos dados, não só os tweets, mas também mensagens diretas, dados pessoais e mais um monte de coisa.  
Veja na imagem abaixo a estrutura de pastas e arquivos que o Twitter disponibiliza.  

![Imagem da pasta contendo os dados que o Twitter disponibiliza](/images/2019/09/twitter-imported.png)  

Note que todos os arquivos possuem a extensão `.js`. Isso é exatamente o que parece, o Twiiter entrega nossos dados em JavaScript.  
Isso nos traz algumas vantagens, mas ao mesmo tempo limita as possibilidades.  
Para quem é dev, entender a estrutura de arquivos e executar o código JavaScript pode não ser um grande desafio, mas e para o restante das pessoas?  
Bom, vamos por partes. Vou atacar esse problema depois (quem sabe uma solução Web onde qualquer pessoa subir seus tweets e gerar o seu site 🤔).  

## Estrutura de dados

Vamos dar uma olhada na estrutura dos arquivos JS.  
Esse é o código do arquivo `account.js` (removi informações sensíveis):  
```js
window.YTD.account.part0 = [ {
  "account" : {
    "phoneNumber" : "+55****",
    "email" : "jayalemao@gmail.com",
    "createdVia" : "web",
    "username" : "jaydson",
    "accountId" : "17294602",
    "createdAt" : "2008-11-10T20:48:02.000Z",
    "accountDisplayName" : "Jaydson Gomes"
  }
} ]
```
A lógica desses arquivos é baseada em um namespace global: `YTD` (your twitter data 🤔).  
Cada arquivo adiciona o seu próprio contexto e dados dentro deste namespace, de maneira que se executarmos todos os arquivos JS em um navegador, teremos a variável global `YTD` contendo todos os nossos dados.  
Na prática isso é inviável, principalmente por conta do arquivo `tweet.js`.  
Notem a propriedade `createdAt` acima, estou no Twitter desde 2008, são mais de 10 anos de tweets.  
O meu arquivo `tweet.js` tem __13,6MB__!.  
Isso dá mais ou menos 13600000 de bytes: 13 milhões e seiscentos mil caracteres 😮!  
Veja abaixo a estrutura de um tweet. Por motivos óbvios, só estou mostrando o primeiro registro, no caso, o meu último tweet.  

```
window.YTD.tweet.part0 = [ {
  "retweeted" : false,
  "source" : "TweetDeck",
  "entities" : {
    "hashtags" : [ ],
    "symbols" : [ ],
    "user_mentions" : [ ],
    "urls" : [ {
      "url" : "https://t.co/OcqN37iCFo",
      "expanded_url" : "https://jaydson.com/social-detox-rehab/",
      "display_url" : "jaydson.com/social-detox-r…",
      "indices" : [ "19", "42" ]
    } ]
  },
  "display_text_range" : [ "0", "42" ],
  "favorite_count" : "5",
  "id_str" : "1034898743869534208",
  "truncated" : false,
  "retweet_count" : "2",
  "id" : "1034898743869534208",
  "possibly_sensitive" : false,
  "created_at" : "Wed Aug 29 20:21:02 +0000 2018",
  "favorited" : false,
  "full_text" : "Social Detox/Rehab\nhttps://t.co/OcqN37iCFo",
  "lang" : "da"
}]
```

## Convertendo tweets para posts
Eu utilizo o [Hugo](https://gohugo.io/) como plataforma para o Blog.  
Sendo o Hugo um SSG (gerador de sites estáticos), onde a estrutura é baseada no filesystem, para se criar um novo post basta que um arquivo [markdown](https://daringfireball.net/projects/markdown/) seja criado na pasta que armazena o conteúdo.  
Para os metadados o Hugo (e a grande maioria dos SSGs) utiliza o padrão [Front Matter](https://gohugo.io/content-management/front-matter/).  
Eu estou utilizando o padrão YAML no Front Matter, que utiliza `---` como marcador. Veja um exemplo de metadado de um post aqui do blog:  

```
---
author: Jaydson Gomes
categories:
- blog
- web
date: "2019-09-26T10:38:17Z"
draft: false
image: /images/2019/09/jaydson.com-2019.png
slug: mudancas-no-blog-2019
tags:
- blog
- web
title: Mudanças no Blog 2019
---
```

Para converter tweets em posts no blog tudo que eu precisava fazer era criar arquivos markdown com o conteúdo do tweet e com os metadados necessários.  
Acabei criando um projeto no GitHub só para lidar com essa conversão: [tweets-to-md](https://github.com/jaydson/tweets-to-md).  
Para quem quiser usar:  

👉 Clone o projeto: `git clone git@github.com:jaydson/tweets-to-md.git`  
👉 Copie o arquivo `tweet.js` para a raiz  
👉 Altere o arquivo `config.js` com as informações necessárias para os metadados  
Veja o exemplo do meu blog:  

```
const config = {
  frontMatterTemplate : `
---
author = "Jaydson Gomes"
categories = ["tweet"]
date = "{TWEET_DATE}"
draft = false
image = "{TWEET_IMAGE}"
slug = "{SLUG}"
tags = ["tweet"]
title = """{TITLE}"""
tweet = true
tweet_url = "https://twitter.com/jaydson/status/{TWEET_ID}"
---
{CONTENT}
`,
  tweetMediaPath: '/images/tweet-media'
}

export default config;
```

👉 Crie uma pasta `./posts`  
👉 Instale as dependências com `npm install`  
👉 Altere a primeira linha do seu arquivo `tweet.js` para o seguinte:  
```
export const tweets = [ {  
```
Isso serve apenas para ignorar a lógica de namespace global mencionada no início, de maneira que que podemos simplesmente importar um módulo JavaScript contendo todos os tweets.  
Veja a primeira linha do `tweets-to-md`:  
```
import { tweets } from './tweet';
```

👉 Rode o script com `npm start`  


O `tweets-to-md` varre todos os tweets e cria os arquivos markdown aplicando metadados e conteúdo.  
Veja um exemplo de como fica o meu último tweet depois de convertido para post no blog:  
```
---
author = "Jaydson Gomes"
categories = ["tweet"]
date = "Wed Aug 29 20:21:02 +0000 2018"
draft = false
slug = "7dffcf9a1433013e157d31838bef66565002208f"
tags = ["tweet"]
title = """Social Detox/Rehab https:..."""
---
Social Detox/Rehab
https://t.co/OcqN37iCFo
```

No final do processo a pasta `./posts` ficou com 9.452 arquivos gerados, ou seja, 9.452 tweets convertidos para posts no blog.  
Uma coisa que implementei no `tweets-to-md` foi um filtro para ignorar replies, o que no final reduziu em mais ou menos 4.000 tweets.  

## Resultado final
Notei que o Hugo ficou um pouco lento no processo de build com tantos arquivos.  
A solução mais fácil que encontrei foi gerar o conteúdo com mais posts por página.  
Outro ponto importante que resolvi fazer no meio do processo foi separar os posts originais do meu blog dos tweets migrados.  
Para isso criei um outro projeto no GitHub: [twitter.jaydson.com](https://github.com/jaydson/twitter.jaydson.com).  
Este projeto também usa o Hugo, inclusive usei o mesmo tema do meu blog para o layout.  
Ah, criei um projeto específico para o tema também: [hugo-paper-tailwind](https://github.com/jaydson/hugo-paper-tailwind).  

Para ver meus tweets em forma de posts no blog, acesse: [https://twitter.jaydson.com/](https://twitter.jaydson.com/).  

![Screenshot do site twitter.jaydson.com](/images/2019/09/twitter-jaydson-com.png)  

## Conclusão
Foi uma tarefa um tanto quanto divertida.  
Agora tenho os meus tweets em forma de conteúdo no meu blog.  
Não sei o que irá acontecer com o Twitter no futuro e não pretendo voltar para lá, então alcancei o meu objetivo principal.  
Infelizmente essa solução não impacta diretamente todas as pessoas. Para executar este processo é necessário um certo conhecimento técnico e também força de vontade.  

Ao desenvolver a solução pensei em várias outras possibilidades, inclusive já implementei algumas.  
Por exemplo, como não uso mais o Twitter, mas sinto a necessidade de criar micro-conteúdo, implementei essa funcionalidade no blog.  
Ao criar um post agora eu decido se vai ser algo mais profundo ou mais curto, e o mais legal: O conteúdo é meu e eu decido o que faço com ele 😉  

E aí, o que acham da ideia?  
Que tal tentar aplicar essa solução no seu blog?  

