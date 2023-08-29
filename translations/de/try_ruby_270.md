---
lang:   DE
title:  Hashes als Paare
answer: ^\[".*"\]
load:   prev
ok:     Du hast die Schlüssel gefunden
error:  
---

Vergiss nicht, dass Hashes nicht für die Reihenfolge der Dinge sorgen. Das ist 
nicht ihre Aufgabe. Sie verbinden nur zwei Dinge miteinander: einen __key 
(Schlüssel)__ und einen __value (Wert)__.

In deinen Rezensionen ist der Titel des Buches der Schlüssel und die Bewertung 
ist der Wert.

Wenn du nur die Titel aller Bücher sehen willst, die du bewertet hast:

    books.keys

Du kannst es auch mit .values anstelle von .keys ausprobieren.