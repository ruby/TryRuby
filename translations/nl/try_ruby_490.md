---
lang:   NL
title:  Binnenste Buiten
answer: Blurb:
ok:     Blurb toegevoegd
error:  
load:   class Blurb;attr_accessor :tekst,:tijd,:stemming;def initialize(stemming, tekst="");@tijd=Time.now;@tekst=tekst[0..39];@stemming=stemming;end;end;blurb1=Blurb.new(:verdrietig,"Today Mount Hood Was Stolen!")
---

Zag je dat er in de klasse voor de variabelen een @ teken stond (@tijd) ?

__Buiten__ de klasse, gebruiken we accessors:

> __blurb.tijd = Time.now__,

maar __binnenin__ de klasse gebruiken we __object variabelen__:

> __@tijd = Time.now__.

Het gaat om precies dezelfde variabelen maar benaderd vanuit twee verschillende delen
van het programma.

### Maak nog maar eens een Blurb<sup>TM</sup>
Als je nu een nieuwe Blurb<sup>TM</sup> maakt wordt de initialize methode aangeroepen
om de opgegeven parameters te controleren.

Uh, we hebben 2 parameters nodig:

    blurb2 = Blurb.new :verward, "I can not believe Mt. Hood was stolen!"
