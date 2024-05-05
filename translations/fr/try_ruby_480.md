---
lang:   FR
title:  Les 'accessors' sont les membres pendouillants.
answer: Blurb:
ok:     Mon premier Blurb
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;end
---

Super classe, mon ami(e)! Tu as une nouvelle classe Blurb<sup>TM</sup>.

Dans la définition de la classe, tu as utilisé une méthode appelée attr\_accessor.  
Il existe de nombreuses méthodes d' __attr__ibut comme celle-ci qui permettent d'apporter de petites améliorations.
Ces attributs sont juste des variables attachées à une classe.

Pensez-y de cette manière. Une classe est comme une personne. 
Cette chose en forme d'étoile est un humain. 
Et les attributs sont les membres pendouillants, les différentes parties qui composent un corps et
que d'autres personnes peuvent se serrer la main avec.

### Maintenant
Pour créer un Blurb<sup>TM</sup> et définir le contenu :

    blurb1 = Blurb.new
    puts blurb1
    blurb1.content = "Aujourd'hui, le Mont Blanc a été volé !"
