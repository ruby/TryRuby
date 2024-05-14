---
lang:   FR
title:  Attends, ai-je aimé Harry Potter ?
answer: ^(splendide|assez_bon|moyen|decu|catastrophique)$
load:   livres = {"Harry Potter"=>:splendide, "The deep end"=>:catastrophique, "Living colors"=>:moyen}
ok:     J'ai beaucoup aimé
error:  
---

Une des grandes choses à propos de Ruby est que les noms sont souvent réutilisés, ce qui signifie moins de noms à retenir.

Tu te souviens comment nous avons récupéré des éléments d'un array en utilisant un nombre :
__puts ticket[1]__.

Pour un hash, ça fonctionne de la même manière, sauf que nous n'utilisons pas un nombre pour obtenir un élément mais un nom.

Donc, si tu veux rechercher une de tes anciennes critiques, mets à nouveau le titre entre crochets. Mais ne mets pas le signe égal (=).
Comme ceci :

    puts livres["Harry Potter"]