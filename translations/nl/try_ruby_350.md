---
lang:   NL
title:  En nu in één keer
answer: ^4$
ok:     Idd, Shakespeare schreef 4 toneelstukken in 1591. Druk baasje.
error:  Nee, in 1591 schreef hij er 4
load:   prev
---

Okee, maar stel dat we alleen geïnteresseerd zijn in de namen en het aantal toneelstukken
dat door Shakespeare in één jaar is geschreven?

Met __select__ kunnen we waarden selecteren uit een hash. De _select_ methode gebruikt een
blok om aan te geven wat we precies willen selecteren.  
We kunnen de door _select_ teruggegeven waarden gebruiken in de __each__ methode. Dit hebben
we al eerder gezien en is weer een voorbeeld van _method chaining_.

Ik heb een __tel\_toneelstukken__ methode voor je gemaakt.
Probeer jij eens uit te zoeken hoeveel toneelstukken Shakespeare in __1591__ heeft geschreven:

    def tel_toneelstukken(jaar)
      s = get_shakey
      
      s["William Shakespeare"]
        .select { |k, v|
          v["finished"] == jaar
        }.each { |key, val|
          puts val["title"]
        }.count
    end
    
    puts tel_toneelstukken(0)

Viel het je op dat ik _count_ aan de _each_ methode heb vastgeplakt.
Dit zorgt voor de return waarde van de __tel\_toneelstukken__ methode.

Er is nog een mogelijkheid voor _method chaining_. Zie je dat regeltje
__s = get_shakey__ eenzaam en alleen staan?
Je zou __["William Shakespeare"].select { |k, v|__ achter _get\_shakey_
kunnen zetten (zonder punt in dit geval).
