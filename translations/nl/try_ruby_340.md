---
lang:   NL
title:  The Two Noble Kinsmen
answer: ^The Two Noble Kinsmen$
ok:     Dat is beter!
error:  
load:   prev
---

Okee, we hebben nu een lijst met toneelstukken. Deze lijst was in het json formaat.
Gelukkig kent Ruby een methode om json om te zetten naar een hash.
De _get\_shakey_ methode heeft dat al voor ons gedaan.

Helaas is de structuur van het json bestand wel overgenomen in de hash. Nog steeds vrij
lastig te lezen dus. Als we nou eens een methode maken die alles netjes uitprint.

Kijk nog eens naar de lijst van de vorige les. Ziet er ongeveer zo uit:

<ul>
  <li>"William Shakespeare"
  <ul>
      <li>"1"
      <ul>
        <li>"title": "The Two Gentlemen of Verona"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>"2"
      <ul>
        <li>"title": "The Taming of the Shrew"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>...</li>
  </ul>
  </li>
</ul>

Om alle toneelstukken te zien moeten we eerst het "William Shakespeare" hash element
benaderen. Daarna moeten we door alle elementen daaronder bladeren. __Itereren__
heet dat.  
Ruby heeft hier een methode voor: __each__. We zijn 'em al even tegengekomen bij
het maken van de boeken scores.

We gaan alles wat methode __each__ vindt doorgeven aan een blok:

    s = get_shakey
    
    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }
