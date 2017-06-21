+++
author = "Jaydson Gomes"
categories = ["PHP"]
date = 2010-08-12T06:07:00Z
description = ""
draft = false
slug = "zend-registerautoload-is-deprecated"
tags = ["PHP"]
title = "Zend - registerAutoload is deprecated"

+++

Após atualizar a versão do [Zend Framework](http://framework.zend.com/) tive problema com o registerAutoload.
Isso porque desde a versão 1.8 o Zend_Loader::registerAutoload está obsoleto.
Meu  código  estava mais ou menos assim:

```
include('Zend/Loader.php');
Zend_Loader::registerAutoload();
```

Para solucionar o problema basta usar o [Zend_Loader_Autoloader](http://framework.zend.com/manual/en/zend.loader.autoloader.html).
Em minha implementação apenas o trecho abaixo resolveu o problema:

```
include('Zend/Loader/Autoloader.php');
$autoloader = Zend_Loader_Autoloader::getInstance();
```
