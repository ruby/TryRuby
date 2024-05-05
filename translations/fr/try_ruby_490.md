---
lang:   FR
title:  Un objet, ce petit paquet bien organisé.
answer: Blurb:
ok:     Blurb mis à jour
error:  
load:   prev;blurb1=Blurb.new;blurb1.content="Aujourd'hui, le Mont Blanc a été volé !"
---

A toi de jouer,  définis le temps et l'humeur du Blurb<sup>TM</sup> :

    blurb1.time = Time.now
    blurb1.mood = :triste
    
    puts blurb1