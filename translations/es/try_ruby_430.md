---
lang:   ES
title:  Y ahora para la sorprendente conclusión
answer: no es igual a 100$
ok:     Eso está mejor
error:  Eso no puede estar bien
---

¿Has visto los dos símbolos de igual en __'abc' == 'def'__?

El __==__ significa __es igual a__.

Un único símbolo de igual (que hemos visto anteriormente) significa __asigna un valor a esta variable__.

Para hacer más confuso, puedes usar la asignación después de un if, así:

    a = 0
    
    if a = 100
      puts "La expresión es true, pero a ahora es: #{a}"
    else
      puts "#{a} no es igual a 100"
    end

Cambia el = por == y mira qué pasa.

Te garantizo que se te olvidará teclear el segundo símbolo de igual con bastante frecuencia. Yo mismo me olvido a veces.

### else
En el código de arriba he añadido una expresión else. Esta es la parte que se ejecutará cuando la __expresión del if__ se evalua a false.

> Hay más variantes de este if-then-else. Puedes leer más
> <a href="http://www.ruby-doc.org/core/syntax/control_expressions_rdoc.html" target="_blank">aquí</a>.
