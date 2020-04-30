---
author: Jaydson Gomes
categories:
- socialmedia
- web
- internet
date: "2020-04-29T08:22:17Z"
draft: false
micro: false
slug: fuck-you-instagram
image: /images/2020/04/fuck-you-instagram.png
tags:
- socialmedia
- web
- internet
title: Fuck You Instagram 🖕
---
![Imagem Fuck You Instagram](/images/2020/04/fuck-you-instagram.png)  
Saia do Instagram. Sério.  
Vai lá agora, entre no site ou no app e exclua sua conta.  
Faça agora, sem medo.  
Não precisa nem fazer *backup*, eu garanto que em alguns meses suas fotos e vídeos que estão lá não vão te fazer falta alguma.  

⌛️⌛️⌛️ Loading...

Fez? Não né. Tudo bem.  
É difícil mesmo, eu entendo.  

Quem sabe [Jaron Lanier](https://en.wikipedia.org/wiki/Jaron_Lanier) te convença, em texto, no livro "Ten Arguments for Deleting Your Social Media Accounts Right Now":  
https://www.amazon.com/Arguments-Deleting-Social-Media-Accounts/dp/125019668X  

Ou em vídeo: 
{{< youtube BCTlcj5vImk >}}  
___

Caso tenha continuado com a leitura, em primeiro lugar, obrigado.  
Em segundo, isso talvez queira dizer que nem que seja lá no fundo, bem no fundo, tu também sinta que existe algo muito errado em todo esse ecossistema criado pelo Instagram.  
Isso vale tanto para indivíduos quanto para empresas.  
Quero falar um pouco sobre a plataforma e por quais motivos ela não merece o nosso tempo, ou ao menos, o meu tempo.  
Esse post é um convite não somente para a exclusão da sua conta, mas também um convite para a reflexão. Se rolar só a reflexão, já é uma pequena vitória.  

## Sigam o meu arroba 🙄

Eu tô de saco cheio de participar de evento (online no momento, né COVID), apresentações, reuniões, ou bate-papo mesmo, e ouvir as pessoas dizerem:  
> Acessem o meu insta para ver o meu conteúdo

Ou empresas:  
> Nossa empresa está presente lá no Instagram, nos sigam para ver o que fazemos

Acho que 99% das pessoas e empresas atualmente indicam seus arrobas, ao invés de qualquer outra forma de comunicação ou consumo de conteúdo.  
__SITE NA INTERNET__, __EMAIL__, ninguém?  
É triste, mas a verdade é que jogamos no lixo a liberdade, poder e riqueza que tínhamos na internet/web.  
E digo jogamos, pois é isso mesmo, ao aderirmos aos encantos de Facebooks e Instagrams, abrimos mão de uma internet que nunca mais voltará.  
Não é nostalgia, não é querer a internet que tínhamos antes, não é se apoiar no _status quo_, é o contrário disso. É olhar para uma internet/web livre, sem muros, sem monopólios, sem busca constante por atenção, sem _dopamina-first-apps_. É tentar fugir da nova era do [capitalismo de vigilância](https://pt.wikipedia.org/wiki/Capitalismo_de_vigil%C3%A2ncia).  

Constantemente o Instagram coloca no ar mais e mais funcionalidades que tiram ou dificultam todo e qualquer acesso público ao conteúdo.  
Ou seja, não tem conta no Instagram? Não pode ver o conteúdo.  
Conteúdo esse que foi criado de forma pública. WTF.  
Uma pessoa criou um conteúdo aberto e para que eu veja eu sou obrigado a ter uma conta ativa? Fuck You Instagram! 🖕  

Basicamente o Instagram está tornando tudo privado e [forçando pessoas a se logarem para consumir conteúdo](https://www.reddit.com/r/Instagram/comments/diw5de/forced_to_sign_in_just_to_use_the_website/) público.  

Chega a ser cômico o pronunciamento oficial sobre a mudança:  
> Isso é para ajudar as pessoas a verem fotos no Instagram e entender como obter a melhor experiência do Instagram fazendo parte da comunidade, conectando-se e interagindo com as pessoas e as coisas que amam  
\- Instagram 

AHuahuahuahuhuahuahuahua!  
Eu não sou um idiota completo, Instagram.  

No final de 2019, [uma matéria no Mashable já reportava sobre a mudança na iterface](https://mashable.com/article/instagram-requires-log-in-to-view-profiles/) que passou a permitir que apenas algumas fotos ou vídeos fossem acessados.  
Para quem, assim como eu, não usa Instagram, ainda era possível acompanhar fotos e vídeos públicos, porém, com um limite.  
Eu de fato faço isso, algumas vezes vou a página web do Instagram no perfil de algum artista que gosto, e vejo algumas coisas.  
Porém, nem isso mais é possível.  

Abaixo, um _screenshot_ da minha tentativa de ver um post do [Fat Mike](https://en.wikipedia.org/wiki/Fat_Mike).  
{{< figure src="/images/2020/04/fatmikedude-instagram.png" title="Perfil no Instagram do Fat Mike" >}}

Nem mesmo posts públicos da minha própria empresa eu posso ver:  

{{< figure src="/images/2020/04/braziljs-instagram.png" title="Perfil no Instagram da BrazilJS" >}}

E é aí que está a grande questão.  
O conteúdo que está no Instagram, não é seu, é do Instagram!  
Quem vende publicidade é o Instagram e quem ganha dinheiro é o Instagram.  
E esse dinheiro não vem somente com publicidade, mas sim com toda a massa de dados, metadados e conteúdos produzidos por todos que estão na plataforma.  
Isso é muito, muito, muito, fora da realidade. Como deixamos isso acontecer?!?!  

Vale um adendo importante nisso.  
Eu sou programador (Hacker aqui), então eu sei como burlar essa imposição em forma de interface do Instagram, pois a implementação de bloqueio de conteúdo foi feita de maneira bem simplória (por enquanto).  
Sendo assim, deixo aqui um pequeno guia para quem (mesmo sem conhecimento técnico) quiser burlar a restrição do Instagram.  

1) Vá até a página do perfil, normalmente algo como `https://www.instagram.com/[NOME_DO_PERFIL]`  
2) Em seu navegador pressiona a tecla F12 (dependendo pode Ctrl+Shift+I), ou ainda procure no menu algo como "Developer Tools" 
3) Clique na ferramenta que possui o ícone que é uma flechinha (circulado em vermelho na imagem abaixo)  

{{< figure src="/images/2020/04/instagram-tool.png" title="Imagem que mostra a ferramenta de desenvolvimento no navegador" >}}

4) Agora com a flechinha habilitada clique na imagem ou vídeo que tu quer ver e o Instagram não deixa  
5) Ao clicar, aparecerá ao lado um pedaço de código que é referente aquele item na página do Instagram. O que precisamos é o código que está logo após o `"a href="`  

{{< figure src="/images/2020/04/instagram-href.png" title="Imagem que mostra a ferramenta de desenvolvimento no navegador buscando um elemento" >}}  

6) O código será algo como `"/p/B_hwEIfgBWC/"`  
7) Agora abra uma nova aba no seu navegador e coloque o endereço do Instagram + o código copiado, ficando algo como: `https://www.instagram.com/p/B_hwEIfgBWC/`  
8) Pronto! Esse é o conteúdo público, que o Instagram não deveria privar ninguém de acessar!  

{{< figure src="/images/2020/04/post-insta.png" title="Post público da BrazilJS no Instagram" >}}
____

Eis que enquanto escrevo esse humilde desabafo, buscando encontrar simpatizantes e botar para fora a angústia, me deparo com o maravilhoso (e aqui é ok chamar de   maravilhoso, porque é mesmo) texto da [Yaso](https://medium.com/@yaso) falando sobre a importância do que? Dos SITES NA INTERNET, ora vejam só!  

> Sites são importantes, porra  
\- Yaso, 2020

É alucinante o fato de que eu estou escrevendo esse texto tão óbvio sobre o Instagram e ainda mais óbvio e mais alucinante que a Yaso esteja escrevendo sobre a importância de FUCKING WEBSITES.  
No post [Lições do Covid: sites são importantes, porra](https://medium.com/@yaso/li%C3%A7%C3%B5es-do-covid-sites-s%C3%A3o-importantes-porra-473d69da12ad) a Yaso faz excelentes observações.  
Por exemplo, como o momento atual de pandemia mostra aos governos e empresas que existe uma ferramenta vital para a transformação digital, o website.  

> Peça simples, negligenciada em tempos comuns, é uma ferramenta importante para compartilhar informações com o maior número de pessoas possível e servir, ao mesmo tempo, de “casa digital” das instituições.  
\- Yaso, 2020

> O formato web é o mais inclusivo de todos os formatos da Internet. Se bem feito, um website pode carregar muito mais rápido as informações urgentes que os cidadãos precisam, sem gastar internet para fazer download de aplicativos, ou tempo registrando em formulários de entrada. Além disso, erros de versão, como quando por exemplo o aplicativo não está disponível para modelos mais antigos de celulares, não acontecem com o website, que é uma versão só, válida pra todo mundo, atualizada quase em tempo real.  
\- Yaso, 2020

Eu poderia usar o texto completo como citação, então, se chegou até aqui, confere lá o texto na íntegra.  
A Yaso vai além, e no post ainda faz um apanhado sobre como construir um site, um passo a passo mesmo, falando sobre gestão de conteúdo, design, ferramentas, etc.  
Como ela diz ao concluir o artigo, "Fazer o básico, nesse caso, é inovar: fazer o que quase ninguém tá fazendo".  

____

Como relatei no post [Social Detox/Rehab](https://jaydson.com/social-detox-rehab/), estou há quase dois anos sem usar redes socias.  
É uma opção particular que tem seus problemas e benefícios. No meu ponto de vista, eu vejo muito mais coisas boas em estar fora das redes sociais.  
Mas vamos voltar ao foco, __Instagram e sua abordagem escrota, monopolista e que coloca de forma industrial as últimas pás de terra na cova da internet/web que conhecemos__.  
Já está claro (ou deveria) para todo mundo que as abordagens do Facebook são problemáticas, seja em seus negócios, produtos ou condutas.  
Aos poucos, o tema privacidade vem tendo mais relevância e mais e mais pessoas passam a entender que seus dados são importantes.  
Outros temas, como o desse post, devem passar a ter uma maior atenção em breve, e só assim, partiremos para uma nova era na internet.  

Já não é a primeira e nem vai ser a última vez que Facebook foca em soluções questionáveis que fogem totalmente de padrões abertos.  
Até mesmo em questões técnicas, Zuckerberg e companhia poderiam ter ajudado e muito na disseminação e adoção da Web como plataforma, mas [optaram em ir para o lado mais cômodo](https://techcrunch.com/2012/09/11/mark-zuckerberg-our-biggest-mistake-with-mobile-was-betting-too-much-on-html5/), e que claro, estava diretamente conectado com os objetivos da empresa. Afinal de contas, apostar em um padrão aberto não faz sentido para nenhum monopólio.  

## Conclusão
Eu espero que esse post seja uma contribuição efetiva e não somente devaneios de alguém decepcionado com o estado atual da internet.  
Se apenas uma pessoa refletir sobre o assunto e cogitar sair do Instagram, acho que já me dou por satisfeito.  
Esse é um trabalho árduo e lento. Desconstruir impérios não é uma tarefa fácil, ainda mais quando os malefícios trazidos pelos mesmos ficam ocultos em meio aos poucos e superficiais benefícios.  


## Referências
Lições do Covid: sites são importantes, porra  
https://medium.com/@yaso/li%C3%A7%C3%B5es-do-covid-sites-s%C3%A3o-importantes-porra-473d69da12ad  

Forced to sign in just to use the website?  
https://www.reddit.com/r/Instagram/comments/diw5de/forced_to_sign_in_just_to_use_the_website/  

Instagram now forces people to sign in to view public profiles  
https://thenextweb.com/socialmedia/2019/10/28/instagram-now-forces-people-to-sign-in-to-view-public-profiles/  

You can’t lurk on Instagram anymore unless you’re logged in  
https://mashable.com/article/instagram-requires-log-in-to-view-profiles/  

Mark Zuckerberg: Our Biggest Mistake Was Betting Too Much On HTML5  
https://techcrunch.com/2012/09/11/mark-zuckerberg-our-biggest-mistake-with-mobile-was-betting-too-much-on-html5/  