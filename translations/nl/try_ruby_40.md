---
lang:   NL
title:  Anders gezegd
answer: ^[0-9\.,-]{1,}$
ok:     Goed gezegd
error:  Euh
---

Zag je dat ! Je geeft 3 sommetjes op maar je krijgt alleen het antwoord van de laatste
som. Hoe kan dat ?

> Om deze website zo handig mogelijk te maken heb ik Ruby de opdracht gegeven om het
> resultaat van jouw programma in het output venster te zetten.  
> Maar alleen het __laatste resultaat__ en alleen als er nog geen andere output is.

Dus toen je 3 sommetjes opgaf liet Ruby alleen het antwoord van de laatste zien.

Maar, jij hebt het in je om de uitvoer naar je hand te zetten. Ik voel het gewoon.

Typ __puts__ voor iedere som (met een spatie ertussen).

Puts betekent in het Engels: '_put something on the screen_'. Oftwel zet _iets op
het scherm_.

Probeer dit eens:

    puts 4 * 10
    puts 5 - 12
    puts 30 / 4

Haal de _puts_ bij de laatste regel weg. Wat gebeurt er dan?
