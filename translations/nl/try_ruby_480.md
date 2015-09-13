---
lang:   NL
title:  Accessors, De Toegangspoorten
answer: Blurb:
ok:     Mijn eerste Blurb
error:  
load:   class Blurb;attr_accessor :tekst,:tijd,:stemming;end
---

Hee, grote klasse die Blurb<sup>TM</sup> klasse!

In de klasse definitie staat een methode: __attr\_accessor__.
Er zijn allerlei __attr__ibute methoden. Deze voegen wat eigenschappen toe aan je klasse.
Attributen zijn gewoon variabelen die bij een klasse horen.

De attr\_accessor methode die wij gebruikten betekent: iedereen heeft toegang (access)
tot de klasse variabelen: tekst, tijd, en stemming.

### Dus
Om een Blurb<sup>TM</sup> maken:

    blurb1 = Blurb.new
    puts blurb1
    blurb1.tekst = "Today Mount Hood Was Stolen!"
