---
lang:   DE
title:  Ringelreihen aus verketteten Methoden
answer: Mein Toast ist mir aus der Hand geflogen
load:   prev
ok:     Gute Arbeit, mein Freund!<br/>Die join-Methode hat das Array von Zeilen genommen und sie zu einem String zusammengefügt.
error:  
---

Was also hast du gesehen? Was ist da passiert? Du hast __poem.lines.reverse__ 
eingegeben und was ist passiert?

Zwei Dinge sind passiert. Du hast das Gedicht in eine Liste umgewandelt, indem 
du 'lines' benutzt hast.
'Lines' entscheidet über die Art der Aufteilung des Strings und konvertiert ihn 
in ein Array.

Dann hast du diese Liste umgedreht. Du hattest die einzelnen Zeilen. Du hast 
sie umgedreht. Das war's.

Lass uns am Ende noch eine weitere Methode hinzufügen:

    puts poem.lines.reverse.join

Das Kombinieren von Methoden auf diese Weise wird als _Methodenverkettung_ 
bezeichnet.