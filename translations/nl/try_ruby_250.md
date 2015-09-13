---
lang:   NL
title:  Meer reviews
answer: [3-9]
load:   boeken = {"De regenboog" => :uitstekend}
ok:     De length methode werkt zowel voor een string, array als hash
error:
---

Ok, ga maar door met toevoegen van boekverslagen. Als je de hele lijst wilt zien
kan je __puts boeken__ gebruiken.

De beoordelingen zijn: :uitstekend, :best\_goed, :matig, :best\_wel\_slecht, :vreselijk.

> De hier getoonde beoordelingen zijn geen strings. Als je een dubbele punt voor een woord
> zet krijg je een __symbool__.  

Symbolen kosten de computer minder geheugenruimte. Maar belangrijker:
als je een symbool in een programma ziet staan geeft dat aan dat dat symbool een bepaalde
betekenis heeft en niet zomaar een willekeurig gekozen woord is.

Voeg nog 2 boekverslagen toe. Gebruik __boeken.length__ om te zien hoeveel verslagen
er al in de hash zitten:

    boeken["Het puffertje"] = :vreselijk
    boeken["Kleurenblind"] = :matig
    
    puts boeken
    
    puts boeken.length
