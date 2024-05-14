---
lang:   FR
title:  Si seulement je savais comment prendre une décision
answer: 
ok:     
error:  
---

Prendre des décisions, dans la vie réelle, peut être un vrai problème. Pas pour nous cependant.
Ruby rend très facile de prendre des décisions.

    if 1 < 2
      puts "C'est vrai : 1 est inférieur à 2"
    end

Le mot clé ici est __if__. If peut être placé avant une méthode ou après une méthode, comme ceci :

    puts "C'est vrai : 1 est inférieur à 2" if 1 < 2

__If__ est une méthode qui nécessite un paramètre. Ce paramètre peut être n'importe quelle expression que vous
voulez tester. Le résultat de l'expression doit être soit __true__ soit __false__.
Voici quelques expressions avec leurs résultats :

    5     <= 10     # => true
    'abc' == 'def'  # => false
    true            # => true
    123456          # => true
    0               # => true
    nil             # => false
    'xyz'.empty?    # => false
    'a' > 5         # => erreur :
                    # la comparaison entre une chaîne de caractères et
                    # un nombre a échoué

L'_expression if_ peut prendre de nombreuses formes. Elle peut comparer des valeurs littérales (1 < 2),
des variables (a < 1) et la valeur de retour d'une méthode ('xyz'.empty?).