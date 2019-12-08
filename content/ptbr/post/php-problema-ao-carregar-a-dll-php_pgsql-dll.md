---
author: Jaydson Gomes
categories:
- PHP
date: "2009-05-04T21:04:00Z"
description: ""
draft: false
slug: php-problema-ao-carregar-a-dll-php_pgsql-dll
tags:
- PHP
title: PHP - Problema ao carregar a DLL php_pgsql.dll
---


Bom, instalar PHP não é nem um mistério...
Mas enfrentei um pequeno problema ao instalar a nova versão do PHP(5.2.8).
O PHP funcionava normalmente, mas eu não conseguia conectar com o PostgreSq.
O erro:
**Call to undefined function pg_connect() **
Este erro significa que, ou a dll do postgres não foi carregada, ou não foi habilitada no PHP.INI.
Eu já havia habilitado isto no INI (descomentando a linha = extension=php_pgsql.dll), e mesmo assim o erro permanecia.
Pesquisando, descobri que o problema é a DLL desta versão do PHP que está com problema.
Para resolver baixei a versão do PHP 2.2.5, e substitui a DLL do Postgre...então tudo funcionou normalmente....

O/
:)
