---
lang:   NL
title:  Ik ben hongerig
answer: ^Ik ben niet hongerig
ok:     Klopt
error:  Om 10 uur heb ik nog geen trek !
---

Dit gaat echt goed. Gaat jou gemakkelijk af allemaal, en dat terwijl je een kwartier
geleden nog helemaal __niets van Ruby wist !__

Laatste stap van dit onderdeel. We laten nu alles samenwerken als één soepele machine.

Eerst definiëren we twee methoden. Dan nemen we een beslissing:

    def hongerig?(tijdstip_in_uren)
      puts "Ik ben hongerig"
      true
    end
    
    def eet_een(wat)
      puts "Ik eet een #{wat}\n"
    end
    
    eet_een 'appel' if hongerig?(14)
    
    eet_een 'appel' if hongerig?(10)

Kan jij de methode __hongerig?__ zo aanpassen dat er __"Ik ben niet hongerig."__
getoond wordt en __false__ teruggeeft als het tijdstip kleiner is dan 12.  
(Dit is de lastigste TryRuby opgave !)
