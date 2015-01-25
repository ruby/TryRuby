---
lang:   ES
title:  Tu Propio Territorio
answer: Blurbalizer:
ok:     Aplicación creada.
error:  
load:   class Blurb;attr_accessor :contenido,:hora,:animo;def initialize(animo, contenido="");@hora=Time.now;@contenido=contenido[0..39];@animo=animo;end;end
---

Bien, cerremos todo esto, chico. !Este es el último capítulo de la FASCINANTE y épica historia de Try Ruby !
Ahora que has probado un poco cómo funciona todo, ¿cómo lo vas a usar en tu casa y en la nevera de la frutería?
Eres una gran persona (una de mis favoritas), pero todavía necesitas que te guíe.

### Completemos la aplicación
Tienes entradas de tu aplicación, pero una aplicación real.
Todavía necesita un título, algún lugar para almacenar todos los Blurbs<sup>TM</sup> y una cronología, para que todo funcione bien.

Adivina, vamos a usar otra clase. He puesto todo el código para la nueva clase de golpe.
__Tómate tu tiempo__ para estudiarlo.
No tengo prisa, te espero en la siguiente lección.

    class Blurbalizer
      def initialize(titulo)
        @titulo  = titulo
        @blurbs = [] # Un array nuevo y vacío para almacenar Blurbs
      end
      
      def crear_un_blurb(animo, contenido)
        # El << significa añadir al final del array
        @blurbs << Blurb.new(animo, contenido)
      end
      
      def mostrar_cronologia
        puts "Blurbalizer: #{@titulo} tiene #{@blurbs.count} Blurbs"
        
        @blurbs.sort_by { |t|
          t.hora
        }.reverse.each { |t|
          puts "#{t.contenido.ljust(40)} #{t.hora}"
        }
      end
    end
    
    mi_app = Blurbalizer.new "El Gran Blurb"
