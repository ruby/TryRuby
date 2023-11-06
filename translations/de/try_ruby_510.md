---
lang:   DE
title:  Du hast deiner App beigebracht, wertlose Dinge abzulehnen
answer: Blurb:
ok:     Blurb hinzugefügt
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end;blurb1=Blurb.new(:sick,"Today Mount Hood Was Stolen!")
---

Hast du gesehen, wie wir innerhalb der Klasse die at-Symbole (@time) verwendet 
haben?

__Außerhalb__ der Klasse verwenden wir Accessors:

> __blurb.time = Time.now__

aber __innerhalb__ verwenden wir die __Objektvariablen__:

> __@time = Time.now__

Sie sind genau dasselbe, werden aber an zwei verschiedenen Stellen in deinem 
Programm verwendet.

### Erstelle einen weiteren Blurb<sup>TM</sup>
Wenn ein neuer Blurb<sup>TM</sup> erstellt wird, überprüft die Methode 
initialize, ob irgendwelche Argumente für new gibt.

Äh, wir brauchen zwei Argumente:

    Blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
