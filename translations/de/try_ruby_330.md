---
lang:   DE
title:  "The Taming of the Shrew"
answer: ^tame
ok:     Gut gut!
error:
---

Du weißt jetzt genau, wie man Ruby benutzt. Ich meine, du hast das Wesentliche 
drauf.
Du musst einfach immer mehr Methoden lernen und komplexere Blöcke ausprobieren.

Aber es gibt eine Seite von Ruby, die wir noch nicht erledigt haben. Eigene 
Methoden zu entwickeln.
__Ähem!__ Bringen wir es also hinter uns.

Neben der Verwendung der in Ruby eingebauten Methoden (wie puts, sort, times) 
kannst du auch deine eigenen Methoden definieren. Warum ist das eine gute 
Idee? Aus zwei Gründen:

### Um dein Programm kürzer zu machen
Wenn du dasselbe in mehr als einem Teil deines Codes tun musst, ist es 
einfacher, diesen Code in eine separate Methode zu packen. Dein Code ist dann 
kürzer.

### Um deinen Code leichter lesbar zu machen
Angenommen, dein Programm muss eine Menge verschiedener Dinge tun.
Du __könntest__ den ganzen Code in ein einzige lange Datei packen. Aber es 
wäre sehr schwierig, diesen Code später zu lesen und zu verstehen.

Stattdessen solltest du deinen Code in verschiedene Methoden aufteilen und 
jeder Methode einen leicht verständlichen Namen geben. Du wirst es dir später danken.

Wie definieren wir also eine Methode? Etwa so:

    def tame( number_of_shrews )
    end
