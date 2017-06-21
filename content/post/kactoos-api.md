+++
author = "Jaydson Gomes"
categories = ["PHP"]
date = 2011-06-30T00:50:00Z
description = ""
draft = false
slug = "kactoos-api"
tags = ["PHP"]
title = "Kactoos API"

+++

Para facilitar ainda mais a vida de quem quer desenvolver Apps utilizando a [API da Kactoos](http://api.kactoos.com/docs) criei uma biblioteca bem simples em PHP.
A ideia é abstrair todos os métodos existentes da API para serem consumidos em poucas linhas de codigo PHP.
A lista de métodos é essa:



	
  1. get-friends

	
  2. get-product-categories

	
  3. get-products-by-range-price

	
  4. get-products-country

	
  5. get-products-most-bought

	
  6. get-product-list

	
  7. get-my-favorites

	
  8. get-my-groups

	
  9. get-products-most-viewed


O projeto está disponível no Github: [https://github.com/jaydson/Kactoos-API](https://github.com/jaydson/Kactoos-API)
A documentação oficial da API
Abaixo coloco alguns exemplos:

```
$kapi = new KactoosAPI();
$kapi->oauthConsumerKey('[SEU_CONSUMER_KEY_AQUI]')
 ->country('br')
 ->module('products')
 ->format('xml');

/*
 * Sample code 1 - Get Product Categories with a specific name search
*/
$sample1 = $kapi->getProductCategories('categorie-name','android');
print_r($sample1);

/*
 * Sample code 2 - Get Products by Range Price
*/
$sample2 = $kapi->getProductsByRange(900, 1100, 'best-price');
print_r($sample2);

/*
 * Sample code 3 - Get Products most bought
*/
$sample3 = $kapi->getProductsMostBought(array('start' => 3,
 'orderby' => 'date',
 'limit'=>3));
print_r($sample3);
```

Qualquer duvida, comentem. Qualquer Bug, consertem. :P
