---
lang:   FR
title:  Pas une classe d'école, une classe ouvrière
answer:
ok:
error:
---

Vois-tu les accolades vides {} c'est un raccourci pour Hash.new. 
La méthode new est utilisée pour créer des objets d'une certaine classe.
Pense à "classe" comme la "classe ouvrière" ; un groupe d'élément ayant les mêmes propriétés : mêmes emplois, mêmes maisons, même style vestimentaire.
Quel est l'utilité d'une classe ?

### Blurbalizer<sup>TM</sup>
Tu viens juste d'avoir une idée brillante pour une nouvelle application.
Ce sera __LA__ prochaine plateforme de messagerie instantanée.
Tu veux une application où les gens peuvent s'envoyer des messages courts.
Tu appelles ces messages Blurbs<sup>TM</sup>. Un Blurb<sup>TM</sup> a une longueur maximale de seulement 40 caractères.
Ajoutons également definir son humeur (__mood__).

### Par où commencer
Eh bien, tu pourrais stocker tes entrées Blurbs<sup>TM</sup> dans un fichier json, n'est-ce pas ?
Mais comment garderais-tu une trace du contenu de l'entrée et de l'heure à laquelle elle a été postée ?
Et lorsque tu chargerais le fichier, comment cela apparaîtrait-il en Ruby ?
Serait-ce un Hash ? Ou un Array ? Ou un Array de Arrays ? Ou autre chose ?

### Classe
Je pense vraiment que tu voudras utiliser une classe.
Tu es déjà familier avec de nombreuses classes : Hash, Array, String.
Créons une nouvelle classe (ne renvoie aucune sortie) :

    class Blurb
    end