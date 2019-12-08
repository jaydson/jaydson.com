---
author: Jaydson Gomes
categories:
- dweb
- dados
- politica
- gdpl
- gdpr
date: "2019-10-21T09:00:28Z"
draft: false
image: /images/2019/10/dados-brasil.png
slug: cadastro-base-cidadao-o-estado-tambem-quer-fazer-parte-da-farra-dos-dados
tags:
- dweb
- dados
- politica
- gdpl
- gdpr
title: "Citizen register database: The Brazilian government also wants to be part of the data party"
---
It seems like the government is always behind in everything, in Brazil it's even worse, sometimes tragic and sometimes comical.  
For over a decade Silicon Valley has popularized - and made it standard - the rampant, unscrupulous, blameless, and shameless use of internet users data.  

In another silent decree, our current government comes surprising the unsuspecting, but also surprises activists, thinkers and journalists who study the subject.  
Last week I got scared playing my favorite podcast in the mornings, [Café da Manhã](https://open.spotify.com/show/6WRTzGhq3uFxMrxHrHh1lo), and [listened about the citizen resgister database](https://open.spotify.com/episode/7oMdboyxzRKJTCNxPDdqJ3?si=S1xJ19sTSlWhAt8CvO5nOg).  


The [Guia Prático](https://open.spotify.com/show/5cZEyTl4lgdkHIbgWMix83) podcast also devoted an episode to [talk about it](https://open.spotify.com/episode/4E2ytQdFXZo3VKdHmseS61?si=I8XytaKeQ044).  
[Deborah Duarte](https://twitter.com/deboracardu) also wrote on her blog: [The government wants your data!](https://deboraduarte.github.io/blog/o-governo-quer-seus-dados. 
We discussed the seme topic in our weekly video at [BrazilJS show](https://www.youtube.com/watch?v=NlYMTm39HUs).  
In short, a lot of people are talking about it, after all, a single registration that gather citizen registration data, such as CPF (social security number), but also data about how we walk, really needs a public debate.  
Debate that strangely did not happen. Well, but I think we can already assume that any kind of debate is something we can't expect in this government.  

Let's go further.    

## What is the citizen register database?  
In short, the register is what its name seems to mean, a centralized citizens information database.  
The [decree was signed](http://www.planalto.gov.br/ccivil_03/_ato2019-2022/2019/decreto/D10046.htm) on Septemper, 10, 2019.  
The registration will have biographical data that are currently linked to the CPF: full name, date of birth, affiliation, gender and city of birth.  
So far we may naively think that everything is ok, but the decree forsee other data in the near future.  
Among them we have the following biometric attributes:  

✋ Hand palm  
🖕 Fingerprint  
👀 Retina or iris  
🤡 Face Format  
🔊 Voice  
🚶 Way to walk  

There'll be an update to the biographical data is, including information such as marital status, address and employment relationships.  
Now imagine the government having integrated access to all this information, crossing different existing public systems, private systems, leaking information intentionally and unintentionally.  
The crap potential is exponential. If our present is already dystopian, imagine our future.  

## It's good someway?

In theory and in the naive and enchanted world of imagination, maybe yes.  
There are numerous direct benefits to the citizen by unifying and centralizing information.  
Who has never complained about the fact that we have so many documents in Brazil?  
Earlier this year I took a car trip to Uruguay 😍.  
Just imagine my face when the immigration asked me for an ID (it's another document like the CPF).  
Obviously I had only my driver's license (CNH - which is another document) and I almost had to go back home.  
It's the same issue whe on rare occasions the reservist document is required, I never know where it is, and I've had to redo it a couple of times.  
We must not forget the voting document and the voting papers that are also needed for some bizarre reason.  
This is just the tip of the iceberg, there are more documents and there is a lot of information that would justify a more robust registration and a more effective way to cross and use information.  

If you think this is an important and necessary step for Brazil to have a Digital Government, you're wrong.  
My long time friend, [Yaso Córdova](https://twitter.com/yaso/), [explains](https://yaso.blogosfera.uol.com.br/2019/09/25/governo-digital-em-um-mundo-super-conectado-para-onde-vai-o-brasil/) the possible benefits of a "Digital Government":  

> One of the ideas of Digital Government is to ensure the same experience of modernity for services that government provides. Bus route monitoring, health records on mobile phones, location of doctors, public defender with the help of robots via chat, payment of taxes via internet, monitoring of politicians agenda, issuance of ID cards, license to drive, certificates, document consultations.  
This idea is not bad. It would make life easier for people, especially those who work all day and do not have much time to face queues, a hallmark of non-digital services. It would also make the policy more transparent if the government chooses to obey the paradigms of the Access to Information Act and give transparency to data.  

- Yaso Córdova  

The decree may seem modern, a step towards the future, but unfortunately it is not.  

## Problems
Let's face the problems.  
The first point is the lack of transparency and lack of open discussion on the subject.  
The Brazilian government has not the slightest technical capacity to create a solution that supports even 10% of what the decree says.  
There are exceptions, of course, but which public service works well on the internet? A silly example that may directly have nothing to do with the decree itself is the page itself where the decree is available: [http://www.planalto.gov.br/ccivil_03/_ato2019-2022/2019/decreto/D10046.htm](http://www.planalto.gov.br/ccivil_03/_ato2019-2022/2019/decreto/D10046.htm).  
You don't need a technology background to realize that this page is a bit outdated.  
Let's go to the source code, and you don't have to dig deep, the first few lines are enough:  

```
<html xmlns="http://www.w3.org/TR/REC-html40" 
      xmlns:o="urn:schemas-microsoft-com:office:office"
      xmlns:v="urn:schemas-microsoft-com:vml">
  <head>
    <meta content="Microsoft FrontPage 6.0" name="GENERATOR"/>
```
Microsoft FrontPage? 6.0?  
[FrontPage](https://en.wikipedia.org/wiki/Microsoft_FrontPage) was a software created in 1995 and discontinued in 2003.  
In practice, the decree page 10.046 on the citizen's register database was generated using software at least 16 years old, assuming that the "latest" version of 2003 was used.  
Ok, one thing has nothing to do with the other, but, I mean, WTF?  

Of course there are great technology cases in the Brazilian government.  
Yaso even mentions that the IR (income tax) system is internationally recognized for its technical solutions.  
The electoral system itself with the electronic box is also a good example.  
However, we can agree that when it comes to citizen-specific services with real benefits, the story is different.  

Another point of attention is the LGPD ([General Data Protection Regulation](http://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/L13709.htm)) overlap.  
The LGPD, which takes effect in August 2020, is the Brazilian version of the [GDPR](https://eugdpr.org/) (General Data Protection Regulation).  
These personal data protection laws aim to end the abuse of data usage.  
There are many inconsistencies in the decree, the main and most worrying is the use, control and data possession by the government.  
Citizen data must belong to the citizen and not to the government.  

## Are there similar solutions that work?
China and India are the countries that already implement something similar.  
In China, mass surveillance is already a reality and internet access is fully regulated and restricted.  
In India something similar to the base register has been around for a long time.  
But neither India nor China seem to be a good example to follow, for one reason or another.  

Then we have [Estonia](https://en.wikipedia.org/wiki/Estonia).  
Estonia has 45,000 square kilometers and less than 1.5 million inhabitants.  
Estonia is roughly the same size as Porto Alegre.  
But what struck me most about Estonia is its digital strategy.  
Thata's very nice to see in practice what Yaso told us about Digital Government.  

![Site e-estonia](/images/2019/10/e-estonia.jpg)  

Take a look at the website [https://e-estonia.com/](https://e-estonia.com/) to understand.  

> We've built a digital society and we can show you how.  
Named ‘the most advanced digital society in the world’ by [Wired](http://www.wired.co.uk/article/estonia-e-resident), ingenious Estonians are pathfinders, who have built an efficient, secure and transparent ecosystem that saves time and money. e-Estonia invites you to follow the digital journey.  

The numbers are impressive:    

✅ 46.7% of Estonians use the internet voting system  
✅ 98% of Estonians have an ID-card  
✅ 99% of services are online  

Reaching these numbers and becoming a digital society required investment and long-term thinking, which we know in Brazil is fiction.  
Estonia started the project 20 years ago. There was no type of data collection and the population had no internet or smartphones.  
What did the government? Invested in technology.  
Estonia currently has a number of digital solutions that characterize it as one of the largest digital societies in the world.  

For comparison purposes, let's look at the Digital ID service:  

> Nearly every one of Estonia's 1.3 million citizens has an ID card, which is much more than simply a legal photo ID.  
Technically, it is a mandatory national card with a chip that carries embedded files, and using 384-bit ECC public key encryption, it can function as definitive proof of ID in an electronic environment.  
Functionally, the ID card provides digital access to all of Estonia’s secure e-services, releasing a person from tedious red tape and making daily tasks faster and more comfortable whether we are talking about banking or business operations, signing documents or obtaining a digital medical prescription.  

Of course, you can not compare a country the size of Estonia with Brazil, but making Brazil a real digital country is not impossible, however, it takes investment and the main thing: People who understand the subject and a non-authoritarian government.  

Let's dream.  

## Conclusion
Brazil loses once again the opportunity to create something of true and beneficial impact.  
The lack of public debate, the lack of transparency and consistency in the decree are much more in line with authoritarianism than anything else.  
There is a lack of politicians who understand the minimum of technology and the government lacks a minimal technological base.  
It is impossible to trust or support a random decree without concrete goals and totally clueless - in the literal sense of the word itself.  
It seems to me that the government is seeking to conform to the Silicon Valley model, precisely at a time when the model itself is being questioned and opposed.  
Technical communities around the world, scientists, activists and hackers have been creating solutions for a new internet for years.  
The data spree is in check and luckily we're evolving to the point that more and more people care and understand the issue, which is not the case with our government.  

### References
**DECREE Nº 10.046, OCTOBER 9, 2019**  
http://www.planalto.gov.br/ccivil_03/_ato2019-2022/2019/decreto/D10046.htm  

**Cadastro Base do Cidadão: oito perguntas e respostas sobre a base de dados**  
https://www.techtudo.com.br/listas/2019/10/cadastro-base-do-cidadao-oito-perguntas-e-respostas-sobre-a-base-de-dados.ghtml  

**Podcast episode (portuguese only) - Base que reúne dados de brasileiros ajuda ou atrapalha?**  
https://open.spotify.com/episode/7oMdboyxzRKJTCNxPDdqJ3?si=S1xJ19sTSlWhAt8CvO5nOg

**Podcast episode (portuguese only) - A ameaça do super banco de dados do governo federal; as empresas do Ocidente que cedem à censura da China**  
https://open.spotify.com/episode/4E2ytQdFXZo3VKdHmseS61?si=I8XytaKeQ164gwFQoX0s8w

**O que é o Cadastro Base do Cidadão. E quais os seus riscos**  
https://www.nexojornal.com.br/expresso/2019/10/12/O-que-%C3%A9-o-Cadastro-Base-do-Cidad%C3%A3o.-E-quais-os-seus-riscos  

**Governo Digital: em um mundo super conectado, para onde vai o Brasil?**  
https://yaso.blogosfera.uol.com.br/2019/09/25/governo-digital-em-um-mundo-super-conectado-para-onde-vai-o-brasil  
