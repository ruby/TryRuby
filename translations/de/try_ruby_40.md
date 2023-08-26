---
lang:   DE
title:  Anders ausgedrückt
answer: ^[0-9\.,-]{1,}$
ok:     Gut ausgedrückt
error:
---

Ist dir aufgefallen, dass du, wenn du mehr als eine Formel eingegeben hast, nur
 die Antwort für die letzte Formel gesehen hast?
Was ist hier los?

> Um diese Website einfacher zu machen, habe ich Ruby so eingestellt, dass das 
Ergebnis deines Programms in den Ausgabebildschirm oben kopiert wird. 
> Wenn du also eine Formel eingibst, kannst du das Ergebnis sehen.
> __Aber nur das letzte Ergebnis.__ Und nur dann, wenn die Ausgabe noch leer 
ist.

Wenn du also 2 oder mehr Formeln eingegeben hast, zeigte Ruby nur das Ergebnis 
der letzten Formel an.

Natürlich hast du die Möglichkeit, den Bildschirm zu steuern! Tippe einfach 
__puts__ vor jede Formel
ein (mit einem Leerzeichen dazwischen). Puts bedeutet: *'etwas auf den 
Bildschirm drucken'*.

Probier das mal:

    puts 4 * 10
    puts 5 - 12
    puts 30 / 4

Lösche nun die 'puts' aus der letzten Formel und schau, was passiert.
