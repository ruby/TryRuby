---
lang:   DE
title:  Geben und Nehmen
answer: \d+
ok:     Genau richtig. Bravo.
error:
---

Die meisten Methoden wollen nicht nur ein paar Parameter als Eingabe, sondern 
auch __etwas zurückgeben__.
Ich habe unsere Methode ein wenig geändert, so dass sie einen Wert an Sie 
zurückgibt. Probier es aus:

    def tame( number_of_shrews )
      number_of_shrews.times {
        puts "Tamed a shrew"
      }
      return number_of_shrews
    end

    puts tame(3)

### Return
Und da du hier so fortgeschritten und fähig wirst, noch ein Tipp: Du kannst 
das Wort __return__ in der letzten Zeile der Methode weglassen.
Ruby gibt automagisch den letzten Wert zurück, der innerhalb der Methode 
verwendet wurde.

Wir können also die letzte Zeile in einfach ändern: __number\_of\_shrews__.

Aber da die Methode __.times__ auch die _number\_of\_shrews_ zurückgibt, 
können wir die gesamte letzte Zeile entfernen. Unsere ursprüngliche Methode 
hat also bereits das getan, was wir die ganze Zeit wollten!
