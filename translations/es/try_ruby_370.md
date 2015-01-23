---
lang:   ES
title:  Si supiera cómo tomar decisiones
answer: 
ok:     
error:  
---

La toma de decisiones, en la vida real esto puede suponer un gran problema. No para nosotros.
Ruby hace que tomar decisiones sea muy fácil.

    if 1 < 2
      puts "Es cierto: 1 es menor que 2"
    end

La palabra clave el __if__. If se puede situar antes o después de los métodos, así:

    puts "Es cierto: 1 es menor que 2" if 1 < 2

__If__ es un método que requiere un parámetro. Ese parámetro puede ser cualquier expresión que
quieras verificar. El resultado de la expresión tiene que ser __true__ or __false__ (verdadero o falso).
Como ejemplo unas cuantas expresiones y su resultado:

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

La _expresión del if_ puede tomar muchas formas. Puede comparar valores literales (1 < 2), 
variables (a < 1) y el valor de retorno de un método ('xyz'.empty?).
