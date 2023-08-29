---
lang:   DE
title:  Hast du die Zeit?
answer: ^[0-9]$
ok:     Du hast genau das richtige Timing!
error:  Führe den Block 0 bis 9 Mal aus
---

Wie wir im ersten Beispiel mit einem Block (beim Zählen von Bewertungen) 
gesehen haben, können wir einen Wert an den Block übergeben. Welche Werte 
__übergeben__ werden, hängt von der Methode ab, die den Block ausführt.

Die Werte, die vom Block __empfangen__ werden, stehen im Variablennamen am 
Anfang des Blocks, zwischen zwei Pipe-Symbolen: |

Versuchen wir das mal mit diesem Block:

    5.times { |time|
      puts time
    }

Hier sendet die Methode __.times__ einen Wert an die Variable __|time|__. Aber 
beachte, dass die Variable time nur innerhalb des Blocks bekannt ist.

> Hast du gemerkt, dass du den Code über mehrere Zeilen aufteilen kannst? Das 
macht es etwas einfacher zu lesen.
