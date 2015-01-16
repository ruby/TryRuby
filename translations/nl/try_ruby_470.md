---
lang:   NL
title:  Een Object, Een Pakketje
answer: Blurb:
ok:     Blurb updated
error:  
load:   prev;blurb1=Blurb.new;blurb1.tekst="Today Mount Hood Was Stolen!"
---

Maak de Blurb<sup>TM</sup> maar af. Voeg een tijd en stemming toe:

    blurb1.tijd = Time.now
    blurb1.stemming = :verdrietig
    
    puts blurb1
