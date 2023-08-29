---
lang:   EN
title:  Bist du hart?
answer: :mediocre
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre, "Bumblebees" => :mediocre}
ok:     Toll, wow! Du hast eine Übersicht über deine Bewertungen erstellt
error:  
---

Verteilst du also harte, unfaire Bewertungen? Lassen Sie uns mit einem neuen 
Hash __ratings__ die Punkte zählen:

Dann, okay, zählen wir jetzt deine Bewertungen zusammen. Mach einfach mit. 
Tippe:

    ratings = Hash.new {0}
    
    books.values.each { |rate|
      ratings[rate] += 1
    }
    
    puts ratings

Die gerade Linie im Code ist das Pipe-Zeichen, das sich wahrscheinlich links 
neben der Y-Taste auf deiner Tastatur befindet.

Die Zeile _+= 1_ bedeutet: Erhöhe den Wert um 1.

Mach dir keine Sorgen, wenn du nicht alles verstehst, was hier vor sich geht. 
Es wird später erklärt werden.
