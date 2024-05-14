---
lang:   FR
title:  Enchaînements de méthode en série
answer: My toast has flown from my hand
load:   prev
ok:     Bon travail, mon ami !<br/>La méthode 'join' prend un liste (array) de chaîne de caractères (string) pour les a rassemblées en une seule string (chaîne de caractères).
error:  
---

Alors, qu'as-tu vu ? Qu'est-ce qui s'est passé là ? Tu as tapé __poem.lines.reverse__ et qu'est-ce qui s'est passé ?

Deux choses se sont produites. Tu as transformé le poème (__poem__) en une liste (__array__) en utilisant la méthode __lines__.
Lines décide de la manière dont la chaîne de caractères (__string__) est découpée et la convertit en un tableau (__array__).    

Ensuite, tu as inversé (__reverse__) cette liste. Tu as pris chaque ligne et tu les as inversées. C'est tout.

Pour finir on à utilisé une autre méthode :

    puts poem.lines.reverse.join

Combiner des méthodes de cette manière s'appelle _l'enchaînement de méthodes (method chaining)_.