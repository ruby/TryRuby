---
lang:   DE
title:  Ein kleines leeres Buch
answer: ^(splendid|quite_good|mediocre|quite_not_good|abysmal)$
load:   books = {}
ok:     Ja, das ist eine neue Bewertung
error:  Verwende einen der Begriffe splendid, quite_good, mediocre, quite_not_good, abysmal.<br/>Den Doppelpunkt nicht vergessen
---

Du hast einen leeren __Hash__ erstellt. Ein Hash ist wie ein Array, nur dass 
jedes seiner Elemente einen Namen hat.

Wir werden einige Mini-Buchrezensionen in unseren neuen Hash packen. Hier ist 
unser Bewertungssystem:

- :splendid &rarr; ein Meisterwerk
- :quite\_good &rarr; genossen, sicher, ja
- :mediocre &rarr; gleichermaßen gut und schlecht
- :quite\_not\_good &rarr; ausgesprochen schlecht
- :abysmal &rarr; dampfendes Wrack

Um ein Buch zu bewerten, setze den Titel in eckige Klammern und die Bewertung 
nach den Gleichheitszeichen. Zum Beispiel:

    books["Gravitys Rainbow"] = :splendid

> Ich denke, es ist nur angemessen, dir zu sagen, dass alle Lektionen in TryRuby 
unabhängig voneinander sind.  
> Wenn du also wild drauf los tippst, Buchbesprechungen zu schreiben, kannst du 
die nur in dieser Lektion verwenden.  
> Wenn du deine Bewertungen in der nächsten Lektion verwenden möchtest, 
solltest du sie kopieren und einfügen.  
> Mach dir nicht zu viele Gedanken darüber, jede Lektion enthält eine Menge 
vorgegebener Dinge, mit denen du herumspielen kannst.
