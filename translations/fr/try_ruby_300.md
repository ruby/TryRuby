---
lang:   FR
title:  Tu as le 'time' ?
answer: ^[0-9]$
ok:     Tu es parfaitement synchronisé !
error:  Lance le bloc de 0 à 9 fois
---

Comme nous l'avons vu dans le premier exemple avec un bloc (lors du décompte des notations), nous pouvons passer une valeur au bloc. Les valeurs qui sont __passées__ sont déterminées par la méthode qui exécute le bloc.

Les valeurs qui sont __reçues__ par le bloc sont placées dans la variable entre les deux symboles pipe au début du bloc : |

Essayons ça avec ce bloc :

    5.times { |time|
      puts time
    }

Ici, la méthode __.times__ envoie une valeur à la variable __|time|__. Mais note que la variable time est uniquement connue à l'intérieur du bloc.

> As-tu remarqué que tu peux répartir le code sur plusieurs lignes ? Cela rend la lecture un peu plus facile.