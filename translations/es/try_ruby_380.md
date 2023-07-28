---
lang:   ES
title:  El mundo es nuestro
answer: ^\{\"William
ok:     Bien. Un poco difícil de leer
error:  
load:   def get_shakey; {"William Shakespeare"=>{"1"=>{"titulo"=>"Los dos hidalgos de Verona", "terminado"=>1591},"2"=>{"titulo"=>"La fierecilla domada", "terminado"=>1591},"3"=>{"titulo"=>"Enrique VI, Parte 2", "terminado"=>1591},"4"=>{"titulo"=>"Enrique VI, Parte 3", "terminado"=>1591},"5"=>{"titulo"=>"Enrique VI, Parte 1", "terminado"=>1592},"6"=>{"titulo"=>"Tito Andrónico", "terminado"=>1592},"7"=>{"titulo"=>"Ricardo III", "terminado"=>1593},"8"=>{"titulo"=>"Eduardo III", "terminado"=>1593},"9"=>{"titulo"=>"La comedia de las equivocaciones", "terminado"=>1594},"10"=>{"titulo"=>"Trabajos de amor perdidos", "terminado"=>1595},"11"=>{"titulo"=>"Trabajos de amor ganados", "terminado"=>1596},"12"=>{"titulo"=>"Ricardo II", "terminado"=>1595},"13"=>{"titulo"=>"Romeo y Julieta", "terminado"=>1595},"14"=>{"titulo"=>"El sueño de una noche de verano", "terminado"=>1595},"15"=>{"titulo"=>"El rey Juan", "terminado"=>1596},"16"=>{"titulo"=>"El mercader de Venecia", "terminado"=>1597},"17"=>{"titulo"=>"Enrique IV, Parte 1", "terminado"=>1597},"18"=>{"titulo"=>"Las alegres comadres de Windsor", "terminado"=>1597},"19"=>{"titulo"=>"Enrique IV, Parte 2", "terminado"=>1598},"20"=>{"titulo"=>"Mucho ruido y pocas nueces", "terminado"=>1599},"21"=>{"titulo"=>"Enrique V", "terminado"=>1599},"22"=>{"titulo"=>"Julio Cesar", "terminado"=>1599},"23"=>{"titulo"=>"Como gustéis", "terminado"=>1600},"24"=>{"titulo"=>"Hamlet", "terminado"=>1601},"25"=>{"titulo"=>"La decimosegunda noche", "terminado"=>1601},"26"=>{"titulo"=>"Troilo y Crésida", "terminado"=>1602},"27"=>{"titulo"=>"Tomás Moro", "terminado"=>1604},"28"=>{"titulo"=>"Medida por medida", "terminado"=>1604},"29"=>{"titulo"=>"Otelo", "terminado"=>1604},"30"=>{"titulo"=>"A buen fin no hay mal tiempo", "terminado"=>1605},"31"=>{"titulo"=>"El rey Lear", "terminado"=>1606},"32"=>{"titulo"=>"Timón de Atenas", "terminado"=>1606},"33"=>{"titulo"=>"Macbeth", "terminado"=>1606},"34"=>{"titulo"=>"Antonio y Cleopatra", "terminado"=>1606},"35"=>{"titulo"=>"Pericles", "terminado"=>1608},"36"=>{"titulo"=>"Coriolano", "terminado"=>1608},"37"=>{"titulo"=>"Cuento de invierno", "terminado"=>1611},"38"=>{"titulo"=>"Cimbelino", "terminado"=>1610},"39"=>{"titulo"=>"La tempestad", "terminado"=>1611},"40"=>{"titulo"=>"Cardenio", "terminado"=>1613},"41"=>{"titulo"=>"Enrique VIII", "terminado"=>1613},"42"=>{"titulo"=>"Los dos nobles caballeros", "terminado"=>1614}}}; end;
---

Hasta ahora hemos ejecutado programas que usan solamente cosas que hemos tecleado nosotros mismos.
Lo cual está bien, quiero decir, todos esos "Olé" fueron épicos, pero esto es la era de Internet, así que
ya es hora de incluir el resto del mundo en nuestros esfuerzos.

Hay muchos, muchos, muchos sitios web a los que les puedes pedir información. Por ejemplo
este enlace te dará todos los <a href="http://news.google.com/news/section?q=ruby&output=rss" target="_blank">Feeds de noticias de Google</a> sobre Ruby.

Tu navegador probablemente te lo muestra muy bonito. Si miras al código fuente de la ṕágina (Ctrl+U)
verás una larga cadena de texto extrañamente formateado. En el ejemplo de Google, está en el formato __rss__.

### Formatos
Hay muchos otros formatos, con nombres extraños, disponibles y que se usan en la web, como:
html, xml y json. Sí, incluso este mismo sitio web utiliza un par de ellos.

He preparado un método para ti que recogerá una lista de las obras completas de William
Shakespeare de internet. (No te preocupes, de hecho proviene del mismo servidor donde se ejecuta este sitio web, así que no estamos molestando a nadie.)

Obtén la información con:

    get_shakey
