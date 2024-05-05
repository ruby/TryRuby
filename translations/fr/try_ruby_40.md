---
lang:   FR
title:  Afficher les choses autrement
answer: ^[0-9\.,-]{1,}$
ok:     Bien affiché
error:  
---

As-tu remarqué que si tu écris plus d'une formule, tu n'as que la dernière réponse.
Comment ça se fait ?

> Pour rendre ce site web simple à utiliser, j'ai demandé à Ruby de copier le résultat de ton programme dans la fenêtre de sortie.  
> Donc, lorsque tu écris une formule, tu peux voir les résultats.  
> __Mais seulement le dernier résultat.__  Et seulement si la sortie est encore vide.  

Du coup si tu as saisi 2 formules ou plus, Ruby n'affiche que le résultat de la dernière formule.

Bien sûr, tu as le pouvoir de contrôler l'écran ! Il suffit d'écrire __puts__ avant chaque formule 
(separé d'un espace). "Puts" signifie : *'Afficher quelque chose à l'écran'*.

Essaie ça :

    puts 4 * 10
    puts 5 - 12
    puts 30 / 4

Maintenant retire les "puts" progressivement et observe ce qui se passe.
