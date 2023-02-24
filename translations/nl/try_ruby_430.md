---
lang:   NL
title:  is == is ?
answer: is niet gelijk aan 100$
ok:     Dat is beter
error:  Dit kan niet kloppen
---

Zag je dat dubbele is teken in __'abc' == 'def'__?

Zo'n dubbele is __==__ betekent __is gelijk aan ???__  
Het enkele is-teken die we hiervoor al vaak hebben gezien betekent:
__ken een waarde toe aan een variabele__ (dit heet assigment in het Engels).

En om je nog verder in verwarring te brengen: je mag de assignment gebruiken
bij een __if__ methode. Een voorbeeld:

    a = 0
    
    if a = 100
      puts "De uitdrukking is waar, maar a is nu: #{a}"
    else
      puts "#{a} is niet gelijk aan 100"
    end

Wijzig de __=__ in __==__ en kijk wat er gebeurt.

Gegarandeerd zal je af en toe vergeten de tweede = in te typen. Overkomt mij ook
nog wel eens.

### else
In de voorbeeld code staat ook een __else__. Deze hoort bij de __if__. De regel
na de _else_ zal worden uitgevoerd als de _if test uitdrukking_ niet waar is.

> Er zijn nog meer variaties op dit als-dan-anders thema. Lees er meer over in de Ruby
> <a href="http://www.ruby-doc.org/core/syntax/control_expressions_rdoc.html" target="_blank">documentatie</a>.
