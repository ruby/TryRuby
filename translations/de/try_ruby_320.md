---
lang:   DE
title:  "To (be) or not to (be)"
answer:
load:   poem = "Mein Toast ist mir aus der Hand geflogen\nUnd mein Toast ist zum Mond geflogen.\nBlablabla\n"
ok:
error:
---

Eine weitere kleine Sache, über die wir noch nicht wirklich offen gesprochen 
haben: Argumente von Methoden.
Weißt du noch, wie wir das Gedicht ein wenig verändert haben? Wir verwendeten:
poem.gsub("Toast", "Melonenstück")

Die Methode gsub benötigt 2 Argumente, die wir an gsub übergeben, indem wir 
zwei Strings zwischen Klammern einfügen. _Argumente sagen der Methode genau, 
was sie tun soll._

### Klammern
Eigentlich macht es Ruby meistens nichts aus, wenn man die Klammern weglässt. 
Das hätte also auch funktioniert:
__poem.gsub "Toast", "Melonenstück"__

Wir haben bereits eine andere Methode mit einem Parameter verwendet. Und zwar 
schon oft, obwohl es nicht sehr offensichtlich war:

    puts "Hallo"
    puts("Hallo")

Ja, __puts__ ist auch eine Methode. Die Verwendung von puts mit oder ohne 
Klammern ist für Ruby dasselbe, aber die Version ohne Klammern ist etwas 
einfacher zu lesen. Und sie spart wertvolle Zeit beim Tippen!

> Die Schlussfolgerung ist wohl, dass du mit Klammern machen kannst, was du 
willst, solange dein Code gut lesbar ist.

### to (be) or not to (be)
Wenn also _to_ eine Methode und _be_ ein Argument ist, kennen wir jetzt die 
Antwort auf diese uralte Frage.
Es ist wirklich nur eine Frage der Vorliebe, ob du _ to be_ oder _to (be)_ 
sein willst.

Hast du Lust auf mehr Shakespeare? Lies weiter.
