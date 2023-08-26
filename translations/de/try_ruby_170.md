---
lang:   DE
title:  Elementar
answer: ^(12|35|47)$
load:   ticket = [12, 47, 35]
ok:     Ok
error:  Fast
---

Wir haben also unsere Nummern in der Variable 'ticket' gespeichert. Wie 
bekommen wir sie wieder raus?

Wir haben bereits gesehen, dass wir mit __max__ die höchste Nummer ermitteln 
können. So ähnlich kannst du auch
das erste (__first__) oder das letzte (__last__) Element der Liste abrufen.
Aber was, wenn du ein bestimmtes Element willst?

### [ ]
Ruby verwendet die eckigen Klammern [ ], um ein Element auszuwählen.
Die eckigen Klammern kommen in Ruby sehr häufig vor.
Sie sind wie ein Visier, mit dem man ein Ziel anvisieren kann. Ganz genau.
Diese Klammern bedeuten: "Ich suche nach ____". Fertig, zielen.

Holen wir uns alle unsere Lottozahlen:

    puts ticket[0]
    puts ticket[1]
    puts ticket[2]

Warum benutzen wir [0], [1], [2]?

Und nicht [1], [2] und [3]? Ist das so eine Art japanisches Zen-Ding?
Nein, wir Computerleute fangen einfach gerne bei Null an zu zählen. Das ist 
nicht nur eine Ruby Sache,
diese _nullbasierte Indizierung_ wird in den meisten Programmiersprachen 
verwendet.

> Eine kurze Erinnerung: Du kannst den Button __Copy__ benutzen, um den 
Beispielcode in den Editor zu kopieren.
