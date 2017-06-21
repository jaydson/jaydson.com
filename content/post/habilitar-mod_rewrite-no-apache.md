+++
author = "Jaydson Gomes"
categories = ["Apache"]
date = 2010-09-07T08:46:00Z
description = ""
draft = false
slug = "habilitar-mod_rewrite-no-apache"
tags = ["Apache"]
title = "Habilitar mod_rewrite no Apache"

+++

Uma coisa que sempre faço, mas sempre esqueço como fazer é habilitar o [mod_rewrite](http://httpd.apache.org/docs/1.3/mod/mod_rewrite.html) do Apache.  
Para quem não conhece, esse é um módulo do Apache que utiliza um mecanismo baseado em regras de reescrita (baseadas em um parser de expressões regulares).  
Basicamente o módulo permite a reescrita de URL's _on the fly_.  

Para habilitar o módulo no Apache basta esta linha:  
```
sudo a2enmod rewrite
```

Agora abra o arquivo de configuração:
```
sudo gedit  /etc/apache2/sites-available/default
```

Procure no seu arquivo a entrada "AllowOverride None", no meu caso estava na linha 11.  
Altere esse valor para "**AllowOverride All**" .  
Salve o arquivo e reinicie o Apache.  
```
sudo /etc/init.d/apache2 restart
```

Basicamente é isso, agora já é possível reescrever  URL's.  
