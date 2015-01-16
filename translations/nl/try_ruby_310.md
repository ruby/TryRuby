---
lang:   NL
title:  Geven en nemen
answer: \d+
ok:     Ja. Super.
error:  
---

De meeste methoden willen niet alleen één of meer parameters als invoer, maar __geven ook
weer iets terug__. Ik heb onze methode een beetje aangepast zodat we een waarde terug krijgen.
Ruby gebruikt hiervoor het woordje __return__.

Probeer maar:

    def tem( aantal_heksen )
      aantal_heksen.times {
        puts "Een heks is getemd"
      }
      return aantal_heksen
    end
    
    puts tem(3)

### Return
En omdat je zo leergierig bent heb ik nog een extra tip voor je:
je mag in Ruby het woordje __return__ weglaten. Ruby geeft automatisch de laatste
waarde waar in de methode iets mee gedaan is terug.

De laatste regel van de methode kunnen we veranderen in: __aantal\_heksen__.
Probeer maar.

Maar. Methode __.times__ geeft ook al _aantal\_heksen_ terug. Dus we kunnen die hele
laatste regel weglaten.  
Eigenlijk deed de oorspronkelijke versie van de methode al precies wat we wilden!
