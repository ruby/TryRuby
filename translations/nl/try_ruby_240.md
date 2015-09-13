---
lang:   NL
title:  Een boekenlijst
answer: ^(uitstekend|best_goed|matig|best_wel_slecht|vreselijk)$
load:   boeken = {}
ok:     Dank je voor je boekverslag
error:  Gebruik: uitstekend, best_goed, matig, best_wel_slecht of vreselijk. Vergeet de dubbele punt niet
---

Je hebt net een lege haspel gemaakt. Een wat ?

In het Engels heet dit een __hash__. En ik stel voor dat we dat woord voortaan gebruiken.
Hash betekent zoiets als verhaspelen, het bij elkaar en door elkaar gooien van de letters
van een woord zodat het korter wordt. Het heeft te maken met de manier waarop Ruby
een hash opslaat in het geheugen van de computer. Is verder niet belangrijk om te weten.
 
> Wel belangrijk om te weten is dat een hash hetzelfde is als een array, alleen
> heeft ieder element van de hash een naam. Een array element heeft alleen een nummer.

We gaan onze hash gebruiken om er wat boekverslagen in op te slaan. Dit zijn de waarderingen:

- :uitstekend &rarr; een meesterwerk
- :best\_goed &rarr; amusant
- :matig &rarr; goed en slecht tegelijk
- :best\_wel\_slecht &rarr; vooral slecht
- :vreselijk &rarr; hopeloos geval

Om een boekverslag toe te voegen zetten we de titel van het boek tusen [ ] haakjes en
omdat de titel een string is ook tussen aanhalingstekens. Bijvoorbeeld:

    boeken["De regenboog"] = :uitstekend

> Het is misschien wel handig om te weten dat alle TryRuby lessen los van elkaar
> staan. Dus als je hier tig boekverslagen intypt kan je die alleen in deze les gebruiken.
> Je kan ze natuurlijk wel kopieëren en plakken in de volgende les.  
> Ik heb iedere les voldoende dingen meegegeven waar je mee kunt spelen.
