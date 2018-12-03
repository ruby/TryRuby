---
lang:   FR
title:  Stop, t'es barge !
answer: ^\d{1,}$
ok:     Seuls les strings peuvent être inversés
error:
---

On ne peut pas inverser le nombre quarante. J'imagine que tu
pourrais tenir ton moniteur en face d'un mirroir, mais inverser un
nombre n'est pas franchement très logique.

Ruby a lancé un message d'erreur. Ruby t'explique qu'il n'y a pas de
méthode pour inverser des nombres.

Tu pourrais peut-être transformer ce nombre en string pour commencer :

    40.to_s.reverse
