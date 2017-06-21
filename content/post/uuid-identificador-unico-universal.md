+++
author = "Jaydson Gomes"
date = 2011-04-14T11:50:00Z
description = ""
draft = false
image = "/images/2016/09/UUID_Registry.png"
slug = "uuid-identificador-unico-universal"
title = "UUID - Identificador Único Universal"

+++

Hoje venho falar de um assunto diferente, mas bem interessante.
**UUID** é a sigla em ingês para **[Universally unique identifier](http://en.wikipedia.org/wiki/Universally_Unique_Identifier)**, que traduzindo para o português fica **Identificador Único Universal.**  
E o que é isso?
Bom, é bem simples de compreender, o nome é auto-explicativo, mas o conceito do UUID é algo mais complexo e muito funcional.
O **UUID** foi padronizado pela OSF ([Open Software Foundation](http://en.wikipedia.org/wiki/Open_Software_Foundation)) como um identificador padrão para softwares.
A intenção é realmente criar um idenficador único (ou quase único O.o) que possa ser compartilhado com outros softwares, ou seja, facilitar a troca de informações entre sistemas distribuídos.
O "quase único" tem uma razão... como se trata de um identificador finito, é possível(duvido!) que existam 2 idenficadores iguais.<!-- more -->

A definição para um **UUID** é um número de 128 bits.
Em teoria, o número possível de UUIDs geradas é de 3 × 1038.
Sim, 3 vezes 1038. Quer saber que número é esse?
Para terem uma ideia, um número decimal com [ordem de magnitude](http://en.wikipedia.org/wiki/Orders_of_magnitude_(numbers)) 24(1024),  equivale a 1 setilhão (1.000.000.000.000.000.000.000.000)  #WTF!
Lembro do meu professor na Faculdade, que dizia que um número desses estava classificado como unidade de medida "Pra Caralho".

Continuando... um **UUID** consiste em um número [Hexadecimal](http://en.wikipedia.org/wiki/Hexadecimal) de 32 digitos. Este número é dividido em 5 grupos separados por hífens.
Exemplo: 53b106e7-0cc6-42cc-ac95-ed8d30a3a98e

Mas porque diabos estou falando disso?
Bom, não é "do nada".  
Quem é usuário LastFM sabe que todo artista possui um **[MBID](http://musicbrainz.org/doc/MBID)** (MusicBrainz ID).
Esse MBID é a razão do meu post, e a razão de eu ter pesquisado sobre o assunto.
Achei tão interesssante que resolvi compartilhar. ;)

Sobre o [Music Brainz](http://musicbrainz.org/), resumidamente, é uma comunidade que tenta criar metadados sobre música.
Por exemplo, o **UUID** 53b106e7-0cc6-42cc-ac95-ed8d30a3a98e que coloquei no exemplo acima, é o MBID do [Queen](http://www.last.fm/music/Queen).
Não apenas artistas possuem UUID, mas também as músicas o/.
Agora faz sentido toda a explicação sobre o Identificador Único Universal, não é?
