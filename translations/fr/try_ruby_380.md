---
lang:   FR
title:  Le monde nous appartient
answer: ^\{\"William
ok:     Super. mais difficile a lire.
error:
load:   def lis_shakou; {"William Shakespeare"=>{"1"=>{"title"=>"Les Deux Gentilshommes de Vérone", "finished"=>1591},"2"=>{"title"=>"La Mégère apprivoisée", "finished"=>1591},"3"=>{"title"=>"Henri VI (deuxième partie)", "finished"=>1591},"4"=>{"title"=>"Henri VI (troisième partie)", "finished"=>1591},"5"=>{"title"=>"Henri VI (première partie)", "finished"=>1592},"6"=>{"title"=>"Titus Andronicus", "finished"=>1592},"7"=>{"title"=>"Richard III", "finished"=>1593},"8"=>{"title"=>"Édouard III", "finished"=>1593},"9"=>{"title"=>"La Comédie des erreurs", "finished"=>1594},"10"=>{"title"=>"Peines d'amour perdues", "finished"=>1595},"11"=>{"title"=>"Peines d'amour gagnées", "finished"=>1596},"12"=>{"title"=>"Richard II", "finished"=>1595},"13"=>{"title"=>"Roméo et Juliette", "finished"=>1595},"14"=>{"title"=>"Le Songe d'une nuit d'été", "finished"=>1595},"15"=>{"title"=>"Le Roi Jean", "finished"=>1596},"16"=>{"title"=>"Le Marchand de Venise", "finished"=>1597},"17"=>{"title"=>"Henry IV, Part 1", "finished"=>1597},"18"=>{"title"=>"The Merry Wives of Windsor", "finished"=>1597},"19"=>{"title"=>"Henry IV (deuxième partie)", "finished"=>1598},"20"=>{"title"=>"Beaucoup de bruit pour rien", "finished"=>1599},"21"=>{"title"=>"Henry V", "finished"=>1599},"22"=>{"title"=>"Jules César", "finished"=>1599},"23"=>{"title"=>"Comme il vous plaira", "finished"=>1600},"24"=>{"title"=>"Hamlet", "finished"=>1601},"25"=>{"title"=>"La Nuit des rois", "finished"=>1601},"26"=>{"title"=>"Troïlus et Cressida", "finished"=>1602},"27"=>{"title"=>"Sir Thomas More", "finished"=>1604},"28"=>{"title"=>"Mesure pour mesure", "finished"=>1604},"29"=>{"title"=>"Othello", "finished"=>1604},"30"=>{"title"=>"Tout est bien qui finit bien", "finished"=>1605},"31"=>{"title"=>"Le Roi Lear", "finished"=>1606},"32"=>{"title"=>"Timon d'Athènes", "finished"=>1606},"33"=>{"title"=>"Macbeth", "finished"=>1606},"34"=>{"title"=>"Antoine et Cléopâtre", "finished"=>1606},"35"=>{"title"=>"Périclès, prince de Tyr", "finished"=>1608},"36"=>{"title"=>"Coriolan", "finished"=>1608},"37"=>{"title"=>"Le Conte d'hiver", "finished"=>1611},"38"=>{"title"=>"Cymbeline", "finished"=>1610},"39"=>{"title"=>"La Tempête", "finished"=>1611},"40"=>{"title"=>"Cardenio", "finished"=>1613},"41"=>{"title"=>"Henry VIII", "finished"=>1613},"42"=>{"title"=>"Les Deux Nobles Cousins", "finished"=>1614}}}; end;
---

Jusqu'à présent, nous avons exécuté des programmes qui n'utilisent que ce que nous avons écris nous-mêmes.
Ce qui est bien, je veux dire que le _Hip, hip houra !_ était épique, mais nous sommes à l'ère d'Internet, donc il est temps d'inclure le reste du monde dans nos efforts de programmation.

De nombreux, nombreux sites Web sont disponibles où tu peux demander des informations. Par exemple, ce lien te donnera tous les flux d'actualités <a href="http://news.google.com/news/section?q=ruby&output=rss" target="_blank">Google sur Ruby</a>.

Ton navigateur Web l'affichera probablement très bien pour toi. Si tu regardes le code source (tape : contrôle-U), tu verras une longue chaîne de texte étrangement formatée. Dans l'exemple de Google, c'est au format __rss__.

### Formats
Il existe de nombreux autres formats, avec des noms étranges, disponibles et utilisés sur le Web, comme :
html, xml et json. Oui, même ce site Web utilise quelques-uns de ces formats.

J'ai préparé une méthode pour toi qui récupérera une liste des œuvres complètes de William
Shakespeare depuis Internet.
(Ne t'inquiète pas, cela provient en fait du même serveur sur lequel ce site Web fonctionne, donc
nous ne dérangeons personne.)

Obtiens les données avec :

    lis_shakou
