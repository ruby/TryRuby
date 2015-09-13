---
lang:   NL
title:  The Taming of the Shrew
answer: ^tem
ok:     Goed goed !
error:  
---

Je hebt Ruby inmiddels al aardig onder de knie. De basis in ieder geval.
Het enige wat je nog moet doen is het leren kennen van meer methoden en
grotere blokken code uitproberen.

Één ding wat ik je nog uit moet leggen is het zelf maken van methoden.
__Ahum!__ Geen getreuzel meer, we beginnen:

Behalve de in Ruby ingebakken methoden (zoals puts, sort, times) kan je ook
zelf methoden definiëren. Maar waarom zou je dat eigenlijk willen. Twee redenen:

### Om je programma korter te maken
Als je dezelfde functionaliteit nodig hebt op meer dan één plek in je code,
kan je die functionaliteit beter in een methode stoppen. De code wordt hierdoor
korter.

### Beter leesbare code
Stel je voor dat je code heel veel verschillende dingen moet doen. Je __zou__
al die code als één lang stuk kunnen intypen. Maar de code zou hierdoor moeilijk
te lezen en te begrijpen zijn. Vooral als je het een tijd later weer bekijkt.

Het is beter om die lange code over meerdere methoden te verdelen. Geef iedere
methode een begrijpelijk naam. Je zal jezelf later dankbaar zijn.

Hoe definieer je een methode ? Zo:

    def tem( aantal_heksen )
    end

P.S. "The Taming of the Shrew" (Het temmen van de heks) is een toneelstuk van Shakespeare.
