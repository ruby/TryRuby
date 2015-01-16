---
lang:   NL
title:  Ben je bij de tijd?
answer: ^[0-9]$
ok:     Goed getimed!
error:  Voer het blok 0 tot 9 keer uit.
---

In het eerste voorbeeld van een blok (bij het maken van de scorelijst) zagen we al dat
we een waarde kunnen doorgeven aan het blok.
Welke waarden worden __doorgegeven__ wordt bepaald door de methode die het blok uitvoert.

De waarden die worden __ontvangen__ door het blok, worden in de variabele gezet die
aan het begin van het blok tussen 2 verticale streepjes | staat.

We kunnen dit uitproberen met het volgende blok:

    5.times { |tijd|
      puts tijd
    }

Methode __.times__ geeft een waarde door aan variabele __|tijd|__.  
De _tijd_ variabele is alleen maar binnen het blok bekend !

> Zie je dat je code over meerdere regels uit kunt splitsen? Dit maakt code
> makkelijker te lezen.
