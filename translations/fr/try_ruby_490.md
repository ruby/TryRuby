---
lang:   FR
title:  Un objet, ce petit paquet bien organisé.
answer: Blurb:
ok:     Blurb mis à jour
error:
load:   prev;blurb1=Blurb.new;blurb1.contenu="Aujourd'hui, le Mont Blanc a été volé !"
---

À toi de jouer, définis l'horaire et l'humeur du Blurb<sup>TM</sup> :

    blurb1.horaire = Time.now
    blurb1.humeur = :triste

    puts blurb1
