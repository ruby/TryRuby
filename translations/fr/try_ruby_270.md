---
lang:   FR
title:  Les Hashs vont de paires
answer: ^\[".*"\]
load:   prev
ok:     Tu as trouvé les clés
error:  
---

Garde à l'esprit que les hashes ne conservent pas les choses dans l'ordre. Ce n'est pas leur rôle. Ils associent simplement
deux choses : une clé (__key__) et une valeur (__value__).

Dans tes critiques, le titre du livre est la clé et la notation est la valeur.

Si tu veux simplement voir les titres de tous les livres que tu as critiqués :

    livres.keys

Tu peux aussi essayer cela avec .values au lieu de .keys.