---
lang:   FR
title:  Tout est bien qui finit bien
answer: Tout est bien qui finit bien
ok:     Vrai
error:  Utilisez 1605 en deuxième paramètre
load:   prev
---

Bien, nous avons obtenu des données d'Internet, nous avons sélectionné ce que nous voulions et nous l'avons afficher.
Que reste-t-il à améliorer ? Nous pourrions afficher les résultats un peu plus joliment. Comme ajouter l'année et aligner les titres et les années.

Cela signifie afficher plusieurs valeurs sur une seule ligne. Ruby a une manière astucieuse de le faire.
C'est comme afficher une chaîne de caractères comme ceci : __puts "Salut, je m'appelle Jimmy"__.
Mais au lieu de la valeur littérale _Jimmy_, nous utilisons la valeur d'une variable.

Remplacez d'abord _Jimmy_ par __#{}__. Si Ruby voit un symbole de hachage __#__ suivi d'une accolade __{__
il cherche une variable entre la première accolade et l'accolade fermante suivante __}__.
Nous pouvons donc utiliser ceci : __"Salut, je m'appelle \#{name}"__.

Modifions un peu notre code :

    def affiche_pièces(annee_debut, annee_fin)
      lis_shakou["William Shakespeare"]
        .select { |k, v|
          annee_debut <= v["finished"] &&
          annee_fin   >= v["finished"]
        }.each { |k, v|
          puts "#{v["finished"].ljust(30)} -> #{v["title"]}"
        }
    end
    affiche_pièces(1600, 1605)

J'ai ajouté __.ljust(30)__ au titre. De cette façon, le titre est justifié à gauche avec une longueur minimale de 30 caractères pour que les années s'alignent joliment.

Vois si tu peux changer la sortie du programme pour qu'elle affiche les pièces comme ceci : __1600 -> Comme il vous plaira__

__Tout est bien qui finit bien ?__ Hé, nous n'avons pas encore terminé, mais la fin est proche !
