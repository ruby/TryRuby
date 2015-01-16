---
lang:   NL
title:  De hash als paar
answer: ^\[".*"\]
load:   prev
ok:     Je hebt de sleutels gevonden
error:  
---

In tegenstelling tot een array kent een hash geen volgorde van zijn elementen. Daar
is een hash ook niet voor gemaakt.

Een hash bevat alleen maar paren. Ieder paar bestaat uit een __sleutel__ en een
__waarde__ (_key_ en _value_ in het Engels).

In jouw boekverslagen is de titel van het boek de sleutel en de beoordeling is de waarde.

Als je alle boektitels wilt zien kan je alle hash sleutels opvragen:

    boeken.keys

Probeer dit ook eens met .values in plaats van .keys.
