---
lang:   DE
title:  Jetzt alle zusammen
answer: ^4$
ok:     Ja, Shakespeare hat 4 Stücke im Jahr 1591 geschrieben.
error:  Die Antwort für das Jahr 1591 sollte 4 sein
load:   prev
---

Nehmen wir nun an, wir wollen nur die Namen und die Anzahl der Stücke wissen, 
die Shakespeare in einem bestimmten Jahr geschrieben hat.

Mit Ruby kann man Werte aus einem Hash __selektieren__. Die select-Methode 
verwendet einen Block, um zu definieren, was ausgewählt werden soll, und gibt 
das gefundene Ergebnis zurück.

Wir können dann die von __select__ zurückgegebenen Ergebnisse in der __each__-
Methode wie zuvor verwenden, indem wir sie einfach nach dem select-Block 
hinzufügen. Dies ist ein weiteres Beispiel für die Methodenverkettung, die wir 
bereits bei der Umkehrung eines Gedichts gesehen haben.

Ich habe die Methode __count\_plays__ für dich vorbereitet. Versuche 
herauszufinden, wie viele Stücke von Shakespeare im Jahr __1591__ geschrieben 
wurden. Versuche es hiermit:

    def count_plays(year)
      s = get_shakey
      
      s["William Shakespeare"]
        .select { |k, v|
          v["finished"] == year
        }.each { |key, val|
          puts val["title"]
        }.count
    end
    
    puts count_plays(0)

Hast du gemerkt, dass ich die count-Methode am Ende der each-Methode angehängt 
habe. Dadurch erhalten wir einen Rückgabewert für die Methode __count\_plays__.

Es gibt hier eine weitere Möglichkeit der Verkettung. Siehe die einsame Zeile 
__s = get_shakey__. Man könnte __["William Shakespeare"].select { |k, v|__ am 
Ende von get_shakey hinzufügen (in diesem Fall ist kein Punkt erforderlich).