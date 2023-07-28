---
lang:   NL
title:  Hoe streng ben jij?
answer: :matig
load:   boeken = {"De regenboog" => :uitstekend, "Het puffertje" => :vreselijk, "Kleurenblind" => :matig, "Bloemetjes en bijtjes" => :matig}
ok:     Wow! Je hebt een scorelijst gemaakt.
error:  
---

Misschien geef jij wel gemene boek beoordelingen ? We gaan de score eens bijhouden.
Dat doen we in een nieuwe hash __scores__:

Ik heb wat code geschreven om de beoordelingen te tellen. Geen paniek als je de code
niet meteen begrijpt. In de volgende lessen wordt het allemaal uitgelegd.

Typ:

    scores = Hash.new {0}
    
    boeken.values.each { |beoordeling|
      scores[beoordeling] += 1
    }
    
    puts scores

Dat verticale streepje | zit op de meeste toetsenborden boven de enter toets.

Die regel met _+= 1_ betekent: verhoog de waarde met 1.
