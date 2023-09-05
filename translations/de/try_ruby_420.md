---
lang:   DE
title:  Wenn ich nur wüsste, wie man eine Entscheidung trifft
answer: 
ok:     
error:  
---

Entscheidungsfindung, das kann im echten Leben ein echtes Problem sein. Aber 
nicht für uns.
Ruby macht es sehr einfach, Entscheidungen zu treffen.

    if 1 < 2
      puts "It is true: 1 is less than 2"
    end

Das Schlüsselwort hier ist __if__. If kann vor einer Methode oder nach einer 
Methode platziert werden, etwa so:

    puts "It is true: 1 is less than 2" if 1 < 2

__If__ ist eine Methode, die einen Parameter benötigt. Dieser Parameter kann 
ein beliebiger Ausdruck sein, den du testen möchtest. Das Ergebnis des 
Ausdrucks muss entweder __true__ oder __false__ sein.
Hier sind einige Ausdrücke mit ihren Ergebnissen:

    5     <= 10     # => true
    'abc' == 'def'  # => false
    true            # => true
    123456          # => true
    0               # => true
    nil             # => false
    'xyz'.empty?    # => false
    'a' > 5         # => error:
                    # comparison of String with
                    # Numeric failed

Der _if-Ausdruck_ kann viele Formen annehmen. Er kann literale Werte (1 < 2), 
Variablen (a < 1) und den Rückgabewert einer Methode ('xyz'.empty?) vergleichen.
