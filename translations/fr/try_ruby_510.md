---
lang:   FR
title:  Tu as appris à ton application à rejeter les choses sans valeur.
answer: Blurb:
ok:     Blurb ajouté
error:
load:   class Blurb;attr_accessor :contenu,:horaire,:humeur;def initialize(humeur, contenu="");@horaire=Time.now;@contenu=contenu[0..39];@humeur=humeur;end;end;blurb1=Blurb.new(:triste,"Today Mount Hood Was Stolen !")
---

As-tu remarqué comment à l'intérieur de la classe nous avons utilisé le arobase « @ » (@horaire).

__À l'extérieur__ de la classe, nous utilisons des « accessors » :

> __blurb.time = Time.now__

mais __à l'intérieur__, nous utilisons les __variables de l'objet__ :

> __@time = Time.now__

Ce sont exactement la même chose, mais exprimée à deux endroits différents de ton programme.

### Crée un autre Blurb<sup>TM</sup>
Lorsqu'un nouveau Blurb<sup>TM</sup> est créé, la méthode initialize est utilisée pour vérifier s'il y a des
arguments à new.

Nous avons besoin de deux arguments :

    blurb2 = Blurb.new :confus, "Je ne peux pas croire que le Mont Blanc a été volé !"
