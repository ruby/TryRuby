---
lang:   NL
title:  Geen Schoolklas, maar de Werkende Klasse
answer: 
ok:     
error:  
---

De accolades __{}__ die we eerder hebben gebruikt is gewoon een afkorting voor __Hash.new__.
De __new__ methode wordt gebruikt om nieuwe objecten te maken van een bepaalde klasse.
In dit geval de Hash klasse.

Bij klasse moet je bijvoorbeeld denken aan de "werkende klasse". Een groep objecten met
dezelfde eigenschappen: zelfde banen, huizen, kledingstijl. Wat heb je aan klassen ?

### Blurbalizer<sup>TM</sup>
Je hebt net een geniaal idee plan voor een nieuwe _app_ bedacht. Jouw app wordt __het__
nieuwe instant messaging platform. Met jouw app kunnen mensen elkaar korte berichten
sturen. Je noemt zo'n bericht een Blurb<sup>TM</sup>.
Een Blurb<sup>TM</sup> mag 40 tekens bevatten. Je kan er ook een stemming in opnemen.

### Hoe ga je beginnen
Je zou de Blurbs<sup>TM</sup> misschien op kunnen slaan in een json bestand.
Maar hoe houd je dan bij wanneer de Blurb<sup>TM</sup> is gemaakt?
En als je het bestand laad hoe ga je er dan mee om in Ruby? Stop je de Blurbs<sup>TM</sup>
in een hash? Of een array? of een array van array's? Of nog iets anders?

### Klasse
Ik kan je hiervoor van harte een klasse aanbevelen (class in het Engels).
Je kent eigenlijk al een hoop Ruby klassen: Hash, Array, String.  
We kunnen zelf ook een klasse maken (geeft geen output):

    class Blurb
    end
