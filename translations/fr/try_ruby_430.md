---
lang:   FR
title:  Et maintenant, la surprenante conclusion
answer: n'est pas égal à 100$
ok:     C'est mieux
error:  Ce n'est pas possible
---

Avez-vous remarqué les 2 signes égaux dans __'abc' == 'def'__ ?

Ce __==__ signifie __est égal à__.
Le simple signe égal que nous avons vu auparavant signifie __affecter une valeur à une variable__.

Pour rendre les choses plus confuses : vous pouvez utiliser l'assignation après une méthode if comme ceci :

    a = 0
    
    if a = 100
      puts "L'expression est vraie, mais a est maintenant : #{a}"
    else
      puts "#{a} n'est pas égal à 100"
    end

Changez le = en == et voyez ce qui se passe.

Je peux vous garantir que vous oublierez régulièrement de taper le deuxième signe égal. Moi aussi, je l'oublie parfois.

### else
Dans le code ci-dessus, j'ai ajouté une expression else. Cette partie sera exécutée lorsque l'__expression de test if__ s'évalue à faux.

> Il existe plus de variations sur ce thème if-then-else. Vous pouvez en lire plus
> <a href="http://www.ruby-doc.org/core/syntax/control_expressions_rdoc.html" target="_blank">ici</a>.