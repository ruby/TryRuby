---
lang:   ES
title:  Acelerandolo todo
answer: ^\d{4}
ok:     Apuntado
error:  
---

Genial, tu aplicación es impresionante. Vamos a hacer las cosas un poco más fáciles para ti.
No vas a querer fijar la hora así cada vez que publiques un Blurb<sup>TM</sup>.

Simplemente quieres escribir el contenido y fijar el estado de ánimo, ¿verdad?

Añadamos un método __initialize__ a nuestra clase. Este método se llama cada vez que se crea un nuevo Blurb<sup>TM</sup>.
A la misma vez podemos limitar la longitud del contenido del Blurb<sup>TM</sup> a 40 caracteres.

    class Blurb
      attr_accessor :contenido, :tiempo, :animo

      def initialize(animo, contenido="")
        @tiempo    = Time.now
        @contenido = contenido[0..39]
        @animo    = animo
      end
    end
    
    Blurb.new(:sick).tiempo

(Ese parámetro __contenido=""__ está ahí para asegurarnos de que tenemos un string como contenido, aunque no le pasemos nada al método initialize).
