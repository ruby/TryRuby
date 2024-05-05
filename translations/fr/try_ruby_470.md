---
lang:   FR
title:  Les éléments qui font une application
answer: 
ok:     
error:  
---

Tu as crées une nouvelle classe Blurb<sup>TM</sup>. De quoi sont faits les articles de blog ?
Le contenu (__content__), bien sûr. Mais aussi de l'heure à laquelle le Blurb<sup>TM</sup> a été publié (__time__). Et aussi une humeur (__mood__).

Bien, tu as la première ligne de la classe, voici la suite :

    class Blurb
      attr_accessor :content, :time, :mood
    end

Les noms de classe commencent toujours par une lettre majuscule.

(Toujours pas de sortie)