---
lang:   ES
title:  Todo es combinar
answer: :-
ok:     Ánimo cambiante !
error:  
load:   prev
---

Se pueden hacer cosas preciosas con las partes simples de Ruby, especialmente cuando las combinas y creas cosas nuevas.  
Aquí tenemos un programa que está hecho con una clase que contiene otra clase. Y, la verdad, a Ruby se le dan muy bien este tipo de criaturas. Se llama programación orientada a objetos.

Hemos llegado al __último ejercicio de programación__ de TryRuby. Si quieres, puedes añadir más características a 
Blurbalizer<sup>TM</sup>

Quizás quieres mostrar el ánimo con un smiley en el método __mostrar\_cronologia__. Podrías incluso añadir un método __smiley\_para\_animo__ a la clase Blurb<sup>TM</sup> y usarlo en el método __mostrar\_cronologia__:

    class Blurb
      attr_accessor :contenido, :tiempo, :animo
      
      def initialize(animo, contenido="")
        @tiempo    = Time.now
        @contenido = contenido[0..39]
        @animo    = animo
      end
      
      def smiley_para_animo
        if    @animo == :triste
          return ":-("
        elsif @animo == :alegre
          return ":-)"
        # Añade otros animos aqui
        end

        # Animo por defecto
        ":-|"
      end
    end
    
    class Blurbalizer
      def initialize(titulo)
        @titulo  = titulo
        @blurbs = []
      end
      
      def crear_un_blurb(animo, contenido)
        @blurbs << Blurb.new(animo, contenido)
      end
      
      def mostrar_cronologia
        puts "Blurbalizer: #{@titulo} tiene #{@blurbs.count} Blurbs"
        
        @blurbs.sort_by { |t|
          t.tiempo
        }.reverse.each { |t|
          puts "#{t.contenido.ljust(40)} #{t.tiempo}"
        }
      end
    end
    
    mi_app.mostrar_cronologia
