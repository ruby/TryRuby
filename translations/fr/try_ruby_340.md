---
lang:   FR
title:  En Ruby, « Def Leppard » signifie : definir la méthode Leppard
answer: ^apprivoiser
ok:     Apprivoiser n'est pas ennuyeux
error:
---

Eh bien, d'accord, dans ce cas faissons le. Crées ta propre méthode en commencant par __def__, suivi du nom de la méthode.
Puis une liste d'arguments dont la méthode aura besoin. Ce n'est pas trop effrayant et dangereux !
Tout ce que nous avons à faire, c'est de la remplir avec du Ruby et de terminer avec __end__.

Voici le code :

    def apprivoiser( nombre_de_mégères )
      nombre_de_mégères.times {
        puts "Apprivoisé une mégère"
      }
    end

> __P.S.__  
> Si tu ne comprends pas le titre de ce chapitre.
> <a href="https://fr.wikipedia.org/wiki/Def_Leppard" target="_blank">Def Leppard</a>
> est le nom d'un, autrefois célèbre, groupe de rock anglais.
