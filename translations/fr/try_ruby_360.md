---
lang:   FR
title:  Donner et prendre
answer: \d+
ok:     Exactement. Bravo.
error:
---

La plupart des méthodes ne veulent pas uniquement quelques paramètres en entrée, mais elles peuvent aussi __donner quelque chose en retour__.
J'ai un peu modifié notre méthode pour qu'elle te retourne (__return__) une valeur. Essaie-la :

    def apprivoiser( nombre_de_mégères )
      nombre_de_mégères.times {
        puts "Apprivoisé une mégère"
      }
      return nombre_de_mégères
    end

    puts apprivoiser(3)

### Return
Et, puisque tu deviens si avancé et compétent ici, un autre conseil :
tu peux omettre le mot __return__ de la dernière ligne de la méthode.
Ruby retournera automatiquement la dernière valeur qui a été utilisée à l'intérieur de la méthode.

Donc, nous pouvons changer la dernière ligne en juste : __nombre\_de\_megeres__.

Mais puisque la méthode __.times__ renvoie également le _nombre\_de\_megeres_, nous pouvons
supprimer toute la dernière ligne. En fait, notre méthode originale faisait déjà ce que nous voulions depuis le début !
