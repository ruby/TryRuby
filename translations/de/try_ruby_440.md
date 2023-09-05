---
lang:   DE
title:  Ich hungrig
answer: ^Ich nicht hungrig
ok:     Ja
error:  Um 10 Uhr bin ich auf gar keinen Fall hungrig!
---

Okay, das klappt ja wunderbar. Das ist einfaches Zeug für dich, aber vergiss 
nicht, dass du vor fünfzehn Minuten noch __gar kein Ruby__ kanntest!

Letzter Schritt. Verbinden wir alles miteinander, okay? Lassen wir es zusammen 
erklingen wie ein schönes, glitzerndes Glockenspiel am Strand im herrlichen 
Sonnenlicht!

Wir werden zunächst zwei Methoden definieren und dann eine Entscheidung treffen:

    def hungrig?(uhrzeit_in_stunden)
      puts "Ich hungrig"
      true
    end

    def iss_einen(was)
      puts "Ich esse #{was}\n"
    end

    iss_einen 'Apfel' if hungrig?(14)

    iss_einen 'Apfel' if hungrig?(10)

Nun versuche, die Methode __hungrig?__ so zu ändern, dass sie __"Ich nicht 
hungrig"__ anzeigt und false zurückgibt, wenn die Zeit kleiner als 12 ist.
