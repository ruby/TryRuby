---
lang:   FR
title:  Fait differemment
answer: ^[0-9\.,-]{1,}$
ok:     Bien fait
error:
---

As-tu remarqué que si tu écris plusieurs formules, tu ne vois la réponse que de la dernière.

Que ce passe-t-il ?

> Pour faire ce site web plus facilement a utiliser, J'ai dit à Ruby de copier le résultat de ton programme dans le carré OUTPUT. Comme ça, quand tu écris une formule tu vois directement le résultat.
> 
> __Mais seulement le dernier résultat__. Et seulement si la sortie est toujours vide.

Donc quand tu écris 2 formules ou plus, Ruby ne te montre le résultat que de la dernière.

Évidemment, tu as le pouvoir de contrôler l'écran ! Tu n'as qu'à écrire __puts__ avant chaque formule (avec un espace entre __puts__ et la formule). Puts veut dire: 'écris quelque chose à l'écran'.

Essaie ceci:

    puts 4 * 10
    puts 5 - 12
    puts 30 / 4

Maintenant, enlève le puts de la dernière formule et vois ce qu'il se passe.
