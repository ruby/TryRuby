---
lang:   FR
title:  En Ruby, "Def Leppard" signifie: definir la méthode Leppard
answer: ^tame
ok:     Apprivoiser n'est pas ennuyeux
error:  
---

Eh bien, d'accord, dans ce cas faissons le. Crées ta propre méthode eb commencant par __def__, suivi du nom de la méthode.
Puis une liste d'arguments dont la méthode aura besoin. Ce n'est pas trop effrayant et dangereux !
Tout ce que nous avons à faire, c'est de la remplir avec du Ruby et de terminer avec __end__.

Voici le code :

    def tame( number_of_shrews )
      number_of_shrews.times {
        puts "Tamed a shrew"
      }
    end

> __P.S.__  
> Si tu ne comprends pas le titre de ce chapitre.
> <a href="http://en.wikipedia.org/wiki/Def_Leppard" target="_blank">Def Leppard</a>
> est le nom d'un, autrefois célèbre, groupe de rock anglais.
