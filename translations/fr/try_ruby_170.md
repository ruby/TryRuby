---
lang:   FR
title:  Élementaire
answer: ^(12|35|47)$
load:   ticket = [12, 47, 35]
ok:     D'accord
error:  Presque
---

Donc nous avons stocké nos numéros de loterie dans la variable ticket.
Comment faire pour les retrouver ?

On a déjà vu qu'il est possible d'obtenir le numéro le plus élevé avec __max__.
On peut également obtenir le premier (__first__) ou le dernier (__last__)
élement de la liste.
Mais que faire si on a besoin d'un élement specifique de la liste?

### [ ]
Ruby utilise des crochets droits [ ] pour viser un élement.
Les crochets droits sont très commun dans Ruby.
Ce sont comme des lunettes de visée pour aligner une cible. Exactement.
Ces crochets signifient, "Je cherche ____". Prêt, vises.

Recupèrons tous nos numéros de lotto :

    puts ticket[0]
    puts ticket[1]
    puts ticket[2]

Pourquoi utiliser [0], [1], [2] ?

Et pourquoi pas [1], [2] and [3] ? Est-ce que c'est une éspèce de truc Zen japonais ?
Non, nous autre les amis des ordinateurs on préfère juste commencer à compter à
partir de zéro. C'est pas juste un truc dans Ruby, ça s'appelle _l'indexation à
base zéro_ et c'est utilisé dans la plupart des languages de programmation.

> Un petit rappel : tu peux utiliser le bouton __Copy__ pour recopier l'exemple de code dans l'éditeur.
