---
lang:   DE
title:  Und nun die erstaunliche Schlussfolgerung
answer: is not equal to 100$
ok:     So ist es besser
error:  Das kann nicht richtig sein
---

Hast du die 2 Gleichheitszeichen in __'abc' == 'def'__ gesehen?

Dieses __==__ bedeutet __ist gleich__.
Das einzelne Gleichheitszeichen, das wir bereits gesehen haben, bedeutet 
__einer Variablen einen Wert zuweisen__.

Um es noch verwirrender zu machen: Sie können die Zuweisung nach einer if-
Methode so verwenden:

    a = 0
    
    if a = 100
      puts "Expression is true, but a is now: #{a}"
    else
      puts "#{a} is not equal to 100"
    end

Ändere das = in == und sieh, was passiert.

Ich kann dir versichern, dass du regelmäßig vergessen wirst, das zweite 
Gleichheitszeichen zu tippen. Auch ich vergesse es manchmal noch.

### else
In dem obigen Code habe ich einen else-Ausdruck hinzugefügt. Dieser Teil wird 
ausgeführt, wenn der Ausdruck __if test-expression__ zu false ausgewertet wird.

> Es gibt noch weitere Varianten dieses if-then-else-Themas. Du kannst 
> <a href="http://www.ruby-doc.org/core/syntax/control_expressions_rdoc.html" target="_blank">hier</a>.
> mehr lesen (auf Englisch).
