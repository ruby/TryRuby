---
lang:   DE
title:  Mehr Kurzbewertungen
answer: [3-9]
load:   books = {"Gravitys Rainbow" => :splendid}
ok:     Siehst du, die length-Methode funktioniert bei Strings, Arrays und Hashes.
error:
---

Mach weiter, fülle sie mit Bewertungen. Und wenn du die ganze Liste sehen 
willst, tippe einfach: __puts books__

Noch einmal, die Bewertungen sind: :splendid, :quite\_good, :mediocre, 
:quite\_not\_good und :abysmal.

Diese Bewertungen sind keine Strings. Wenn du einen Doppelpunkt vor ein 
einfaches Wort setzt, erhältst du ein __Symbol__. Symbole sind sparsamer als 
Strings (in Bezug auf den Computerspeicher). Wenn du ein Wort immer wieder in 
deinem Programm benutzt, verwende ein Symbol. Anstatt Tausende von Kopien 
dieses Wortes im Speicher zu haben, speichert der Computer das Symbol nur 
__einmal__.

Noch wichtiger ist, ein Symbol zeigt dir, dass es nicht irgendein Wort ist, 
sondern eine Bedeutung innerhalb deines Programms hat.

Gib 2 weitere Buchrezensionen ein, verwende __books.length__, um zu sehen, wie 
viele Rezensionen der Hash enthält:

    books["The deep end"]  = :abysmal
    books["Living colors"] = :mediocre
    
    puts books
    
    puts books.length
