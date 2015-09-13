---
lang:   NL
title:  Eind Goed Al goed
answer: All's Well That Ends Well
ok:     Eind Goed Al goed
error:  Gebruik 1605 als tweede parameter
load:   prev
---

We hebben nu dus wat data van het internet gehaald, we hebben geselecteerd wat we wilden
hebben en dit uitgeprint.
Wat nu nog ? We zouden de resultaten wat mooier kunnen printen. Met het jaar er bij en
alles netjes uitgelijnd.

Hiervoor moeten we twee waarden op één regel zetten. Ruby heeft daar een mooie truuk
voor. Het werkt net als het printen van een gewone string. Bijvoorbeeld:
__puts "Hallo, ik ben Jantje"__.
Maar in plaats van _Jantje_ gebruiken we de waarde van een variabele.

Eerst vervangen we __Jantje__ door __#{}__. Ruby weet dan dat er een variable aankomt.
De string wordt nu:  
__"Hallo, ik ben \#{naam}"__.

We passen onze code een beetje aan:

    def print_toneelstukken(jaar_van, jaar_tot)
      get_shakey["William Shakespeare"]
        .select { |k, v|
          jaar_van <= v["finished"] &&
          jaar_tot >= v["finished"]
        }.each { |k, v|
          puts "#{v["title"].ljust(30)} #{v["finished"]}"
        }
    end
    print_toneelstukken(1600, 1605)

Dat __.ljust(30)__ heb ik toegevoegd om te zorgen dat de titel altijd minimaal 30
letters lang is. Hierdoor is het jaartal mooi links uitgelijnd (_left justified_).

Kan jij de code zo aanpassen dat de uitvoer er zo uitziet:  
__1600 -> As You Like It__

### Eind Goed Al goed ?
Hé we zijn er nog niet. Maar het eind is in zicht!
