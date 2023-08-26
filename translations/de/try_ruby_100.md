---
lang:   DE
title:  Stop, du bist völlig irre!
answer: ^\d{1,}$
ok:     Nur Strings können umgedreht werden
error:  
---

Man kann die Nummer vierzig nicht umdrehen. Ich denke, du kannst deinen Monitor 
an den Spiegel halten, aber eine Nummer umzudrehen macht einfach keinen Sinn.

Ruby hat eine Fehlermeldung geworfen. Ruby sagt dir, es gibt keine Methode 
'reverse' für Nummern.

Vielleicht, wenn du die Nummer zuerst in einen String umwandelst:

    40.to_s.reverse
