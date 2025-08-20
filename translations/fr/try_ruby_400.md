---
lang:   FR
title:  Tous ensemble désormais
answer: ^4$
ok:     Oui, Shakespeare a écrit 4 pièces en 1591
error:  La réponse pour l'année 1591 devrait être 4
load:   prev
---

Maintenant, supposons que nous voulions uniquement connaître les noms et le nombre de pièces écrites par Shakespeare au cours d'une année spécifique.

Ruby nous permet de sélectionner (__select__) des valeurs à partir d'un hash. La méthode select utilise un bloc pour nous permettre de définir ce que nous voulons sélectionner et retourne ce qu'elle a trouvé.

Nous pouvons ensuite utiliser les résultats retournés par __select__ dans la méthode __each__ comme précédemment en les ajoutant simplement après le bloc select. C'est un autre exemple de chaînage de méthodes, que nous avons vu précédemment lors de l'inversion d'un poème.

J'ai préparé la méthode __compte\_pièces__ pour toi. Essaye de trouver combien de pièces ont été écrites par Shakespeare en l'année __1591__. Essaie ceci :

    def compte_pièces(annee)
      s = lis_shakou

      s["William Shakespeare"]
        .select { |k, v|
          v["finished"] == annee
        }.each { |key, val|
          puts val["title"]
        }.count
    end

    puts compte_pièces(0)

As-tu remarqué que j'ai chaîné la méthode count à la fin de la méthode each ? Cela nous donne une valeur de retour pour la méthode __compte\_pièces__.

Il y a une autre possibilité pour le chaînage ici.
Regarde cette ligne toute seule __s = lis\_shakou__.
Tu pourrais retirer la variable __s__ et chaîner __lis\_shakou__ avec le __["William Shakespeare"].select { |k, v|__ directement (pas besoin de point dans ce cas).
