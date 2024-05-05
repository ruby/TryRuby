---
lang:   FR
title:  La page blanche du livre
answer: ^(splendide|assez_bon|moyen|decu|catastrophique)$
load:   livres = {}
ok:     Oui, c'est une nouvelle critique
error:  Utilise l'un de ces mots splendide, assez_bon, moyen, decu, catastrophique.<br/>N'oublie pas le deux-points (:).
---

Tu as créé un __hash__ vide. Un hash est comme un tableau, sauf que chaque élément a un nom.

Nous allons mettre quelques critiques de livres dans notre nouveau hash. Voici notre système de notation :

- :splendide &rarr; un chef-d'œuvre
- :assez_bon &rarr; apprécié, sûr, oui
- :moyen &rarr; ni bon, ni mauvais
- :decu &rarr; assez mauvais
- :catastrophique &rarr; un désastre fumant

Pour noter un livre, mets le titre entre crochets et mets la note après le signe égal. Par exemple :

    livres["Harry Potter"] = :splendide

> À ce stade, je pense qu'il est juste de te dire que toutes les leçons de TryRuby sont indépendantes les unes des autres.
> Donc, si tu deviens fou à taper des critiques de livres ici, tu ne pourras les utiliser que dans cette leçon.
> Si tu veux utiliser tes critiques dans la prochaine leçon, tu devrais les copier/coller.
> Ne t'inquiète pas trop à ce sujet, chaque leçon a plein de trucs prédéfinis pour que tu puisses jouer avec.