---
lang:   FR
title:  Donner et prendre
answer: \d+
ok:     Exactement. Bravo.
error:
---

La plupart des méthodes ne veulent pas uniquement quelques paramètres en entrée, mais elles peuvent aussi __donner quelque chose en retour__.
J'ai un peu modifié notre méthode pour qu'elle te retourne (__return__) une valeur. Essaie-la :

    def tame( number_of_shrews )
      number_of_shrews.times {
        puts "Tamed a shrew"
      }
      return number_of_shrews
    end

    puts tame(3)

### Return
Et, puisque tu deviens si avancé et compétent ici, un autre conseil :
tu peux omettre le mot __return__ de la dernière ligne de la méthode.
Ruby retournera automatiquement la dernière valeur qui a été utilisée à l'intérieur de la méthode.

Donc, nous pouvons changer la dernière ligne en juste : __number\_of\_shrews__.

Mais puisque la méthode __.times__ renvoie également le _number\_of\_shrews_, nous pouvons
supprimer toute la dernière ligne. En fait, notre méthode originale faisait déjà ce que nous voulions depuis le début !