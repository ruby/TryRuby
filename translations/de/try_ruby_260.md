---
lang:   DE
title:  Warte, hat mir Gravity's Rainbow gefallen?
answer: ^(splendid|quite_good|mediocre|quite_not_good|abysmal)$
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre}
ok:     Es hat mir sehr gut gefallen
error:  
---

Eine tolle Sache an Ruby ist, dass Namen oft wiederverwendet werden, was 
weniger Namen bedeutet, die man sich merken muss.

Erinnerst du dich daran, wie wir mit Hilfe einer Nummer Elemente aus einem 
Array abgerufen haben?  
__puts ticket[1]__.

Bei einem Hash funktioniert das genauso, nur dass wir keine Nummer, sondern 
einen Namen verwenden, um ein Element zu erhalten.

Wenn Sie also einen Ihrer alten Beiträge nachschlagen möchten, setzen Sie den 
Titel wieder in die eckigen Klammern. Aber lass die Gleichheitszeichen weg.
Etwa so:

    puts books["Gravitys Rainbow"]
