---
lang:   DE
title:  Accessors sind die baumelnden Gliedmaßen
answer: Blurb:
ok:     My first Blurb
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;end
---

Hey, gute Klasse, Kumpel. Du hast eine neue Blurb<sup>TM</sup>-Klasse.

In der Definition der Klasse hast du eine Methode namens attr\_accessor 
verwendet. Es gibt viele __Attr__ibute Methoden wie diese, die kleine 
Einstellungen zu Klassen hinzufügen. Diese Attribute sind einfach nur 
Variablen, die einer Klasse zugeordnet sind.

Sieh es doch einmal so. Eine Klasse ist wie eine Person. Dieses sternförmige 
menschliche Ding da draußen. Und die Attribute sind die baumelnden Gliedmaßen, 
die verschiedenen Teile, aus denen ein Körper besteht und denen andere 
Menschen die Hand geben können.

### Und nun
Erstellen eines Blurbs<sup>TM</sup> und Festlegen des Inhalts:

    blurb1 = Blurb.new
    puts blurb1
    blurb1.content = "Today Mount Hood Was Stolen!"
