---
lang:   FR
title:  La Mégère apprivoisée
answer: ^tame
ok:     Bien bien !
error:
---

Tu sais parfaitement comment utiliser Ruby maintenant. Je veux dire, tu as maîtrisé les bases.
Il te suffit simplement d'apprendre plus de méthodes et d'essayer des blocs plus complexes.

Mais il y a un côté de Ruby que nous n'avons pas encore abordé. Créer tes propres méthodes.
__Hum !__ Allons-y alors.

En plus d'utiliser les méthodes intégrées de Ruby (comme puts, sort, times), tu peux définir
tes propres méthodes. Pourquoi est-ce une bonne idée ? Deux raisons :

### Pour rendre ton programme plus court
Si tu dois faire la même chose à plusieurs endroits de ton code, il est plus facile
de mettre ce code dans une méthode séparée. Ton code sera plus court.

### Pour rendre ton code plus facile à lire
Suppose que ton programme doit faire beaucoup de choses différentes.
Tu __pourrais__ tout entasser dans un seul long morceau de code. Mais il serait très difficile de
lire et comprendre ce code plus tard.

Au lieu de cela, tu devrais découper ton code en différentes méthodes et donner à chaque méthode un nom en anglais facile à
comprendre. Tu te remercieras plus tard.

Alors comment définissons-nous une méthode ? Comme ceci :

    def tame( number_of_shrews )
    end
