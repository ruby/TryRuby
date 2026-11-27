---
lang:   NL
title:  Doe niet zo gek
answer: ^\d{1,}$
ok:     Strings kunnen worden omgekeerd (en dat geldt ook voor arrays, waar je hierna meer over zult leren)
error:  
---

Een nummer kan je niet omdraaien. Misschien kan je een spiegel naast je monitor houden,
maar een nummer omdraaien kan echt niet.

Ruby gaf daarom een foutmelding. Ruby wil je duidelijk maken dat er geen __reverse methode__
bestaat voor nummers.

Maar als je het nummer eerst eens om zou zetten naar een string:

    40.to_s.reverse
