---
lang:   FR
title:  Encore plus de critiques
answer: [3-9]
load:   livres = {"Harry Potter" => :splendide}
ok:     See, the length method works on strings, arrays and hashes.
error:
---

Continuons, remplis des critiques. Et si tu veux voir toute la liste, il te suffit de taper : __puts livres__

Encore une fois, les notations sont : :splendide, :assez_bon, :moyen, :decu, :catastrophique

Ces notations ne sont pas des strings. Lorsque tu places un deux-points devant un mot simple, tu obtiens un __symbole__.
Les symboles sont moins coûteux en mémoire que les chaînes de caractères. Si tu utilises un mot encore et encore dans ton programme,
utilise un symbole. Plutôt que d'avoir des milliers de copies de ce mot en mémoire, l'ordinateur ne stockera le symbole qu'une seule fois.

Plus important encore, un symbole te dit que ce n'est pas juste un mot ordinaire mais qu'il a une signification dans ton programme.

Ajoute encore 2 critiques de livres, utilise __livres.length__ pour voir combien de critiques il y a dans le hash :

    livres["The deep end"]  = :catastrophique
    livres["Living colors"] = :moyen
    
    puts livres
    
    puts livres.length
