---
lang:   NL
title:  Elementair
answer: ^(12|35|47)$
load:   kaart = [12, 47, 35]
ok:     Ok
error:  Bijna
---


We hebben ons lijstje met bingo getallen in variabele kaart staan. Hoe krijgen we
de getallen er weer één voor één uit?

We hebben __max__ al gebruikt om het hoogste getal te bepalen. Je kunt ook __first__
of __last__ gebruiken voor het eerste en laatste element van de lijst.
Maar hoe haal je er één specifiek element uit?

### [ ]
Ruby gebruikt hiervoor de vierkant teksthaken.
Deze worden trouwens heel vaak gebruikt in Ruby.

Ok, we halen de bingo getallen één voor één op:

    puts kaart[0]
    puts kaart[1]
    puts kaart[2]

Maar waarom [0], [1], [2] ? En niet [1], [2] and [3] ?

Heeft dat met dat Japanse Zen gedoe te maken?  
Nee hoor, computer programmeurs beginnen nou eenmaal graag met tellen vanaf
nul. En niet alleen Ruby programmeurs maar alle programmeurs. Het heeft
zelfs een naam: _zero based indexing_.

> Tip: mocht je het vergeten zijn, je kunt de __Copy__ knop gebruiken om de
> voorbeeldcode over te nemen in de editor.
