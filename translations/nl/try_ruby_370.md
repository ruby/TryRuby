---
lang:   NL
title:  Kon ik toch maar beslissen
answer: 
ok:     
error:  
---

Beslissingen nemen kan in het dagelijks leven soms een probleem zijn.
Voor ons gelukkig niet. In Ruby is dit namelijk heel gemakkelijk.

    if 1 < 2
      puts "Het is waar: 1 is kleiner dan 2"
    end

Het belangrijkste woord is hier: __if__. If (als) kan voor of achter een methode worden
geplaatst. Zo:

    puts "Het is waar: 1 is kleiner dan 2" if 1 < 2

__If__ is een methode met één parameter. Die parameter is een Ruby uitdrukking
die je wilt testen.
De te testen uitdrukking (expression in het Engels) moet of __true__ (waar) zijn
of __false__ (niet waar).

Dit zijn wat voorbeeld uitdrukkingen:

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

De te testen uitdrukking kan vele vormen aannemen. Je kan bijvoorbeeld
letterlijk waarden opgeven (1 < 2) of variabelen (a < 1) of de waarde
van een methode gebruiken ('xyz'.empty?).
