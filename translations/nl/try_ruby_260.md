---
lang:   NL
title:  Eh, wat vond ik ook al weer van De regenboog?
answer: ^(uitstekend|quite_good|mediocre|quite_not_good|abysmal)$
load:   boeken = {"De regenboog" => :uitstekend, "Het puffertje" => :vreselijk, "Kleurenblind" => :matig}
ok:     O ja, ik vond het een meesterwerk
error:  
---

Weet je nog hoe we een waarde uit een array haalden:  
__puts ticket[1]__.

Bij een hash werkt dit hetzelfde, alleen gebruiken we geen nummer om een element op te zoeken
maar een naam.

Dus als je een oud boekverslag op wilt zoeken zet je nu de naam van het boek tussen de [ ]
haken. En het = teken laten we weg:

    boeken["De regenboog"]
