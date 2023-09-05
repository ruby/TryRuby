---
lang:   DE
title:  Ende gut, alles gut
answer: All's Well That Ends Well
ok:     Wahr
error:  Verwende 1605 als zweiten Parameter
load:   prev
---

Okay, wir haben uns ein paar Daten aus dem Internet besorgt, wir haben 
ausgewählt, was wir wollten und es ausgedruckt. Was können wir noch verbessern? 
Wir könnten die Ergebnisse etwas hübscher ausdrucken. Zum Beispiel das Jahr 
hinzufügen und Titel und Jahre ausrichten.

Das bedeutet, mehrere Werte in einer Zeile auszugeben. Ruby hat eine nette 
Art, das zu tun. Es ist so, als würde man eine Zeichenkette ausgeben wie: 
__puts "Hallo, mein Name ist Jimmy"__ aus. Aber anstelle des literalen Wertes 
_Jimmy_ verwenden wir den Wert einer Variablen.

Ersetze als erstes __Jimmy__ durch __#{}__. Wenn Ruby ein Raute-Symbol # 
gefolgt von einer geschweiften Klammer { sieht, sucht es nach einer Variablen 
zwischen der ersten Klammer und der folgenden schließenden Klammer }.
Wir können also Folgendes verwenden: __"Hallo, mein Name ist \#{name}"__.

Ändern wir unseren Code ein wenig

    def print_plays(year_from, year_to)
      get_shakey["William Shakespeare"]
        .select { |k, v|
          year_from <= v["finished"] &&
          year_to   >= v["finished"]
        }.each { |k, v|
          puts "#{v["title"].ljust(30)} #{v["finished"]}"
        }
    end
    print_plays(1600, 1605)

Ich habe __.ljust(30)__ zum Titel hinzugefügt. Auf diese Weise ist der Titel 
_linksbündig_ mit einer Mindestlänge von 30 Zeichen, so dass die Jahreszahlen 
hübsch angeordnet sind.

Versuche, die Ausgabe des Programms so zu ändern, dass es die Stücke wie folgt 
anzeigt: __1600 -> As You Like It__

__Ende gut, alles gut?__ Hey, wir sind noch nicht fertig, aber das Ende ist in 
Sicht!
