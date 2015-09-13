---
lang:   NL
title:  De schakels van de ketting
answer: ^More still did (.+)
load:   prev
ok:     Goed gedaan gast! De join methode heeft dat array weer aan elkaar geplakt.
error:  
---

Wat gebeurde daar ? Je voerde __vers.lines.reverse__ uit en toen?

Twee dingen. Eerst zette je het versje om in losse regels met de _lines_
methode. _Lines_ (regels in het Nederlands) zet een string om naar een array.
Iedere regel wordt één element in het array.

Vervolgens heb je het array omgedraaid. Regel voor regel.

We voegen nog één methode toe aan het einde:

    puts vers.lines.reverse.join("\n")

> Als we meerdere methodes op deze manier aan elkaar koppelen, als een soort
> ketting van methoden, noemen we dit in het Engels: __method chaining__.
