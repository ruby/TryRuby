---
lang:   EN
title:  Stop, vous êtes barge!
answer: ^\d{1,}$
ok:     Seuls les strings peuvent être inversés
error:
---

Vous ne pouvez pas inverser le nombre quarante. J'imagine que vous
pourriez tenir votre moniteur en face d'un mirroir, may inverser un
nombre ne fait simplement aucun sens.

Ruby a lancé un message d'erreur. Ruby vous dit qu'il n'y a pas de methode
pour inverser des nombres.

Tu pourrais peut-être transformer ce nombre en string pour commencer:

    40.to_s.reverse
