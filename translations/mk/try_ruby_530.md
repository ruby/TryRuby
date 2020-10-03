---
lang:   МК
title:  Твојата сопствена територија
answer: Blurbalizer:
ok:     myapp е креирана
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

Тука може да ги привршуваме работите, читателу. Тука е последното поглавје од епската приказна на TryRuby!
Сега кога имаш ориентација како сѐ работи, како ќе ги искористиш за твојата куќа и за твојот замрзнувач? 
Ти си прекрасна личност, дури и една од моите омилени, но сепак ти треба насочување.

### Ајде да ја завршиме твојата апликација
Ти имаш елементи, но немаш вистинска програма.
Сеуште треба наслов, некое место за да ги зачуваме сите Blurbs<sup>TM</sup> и времеплов (анг. timeline) со цел да функционира.

Погоди што? Ние ќе користиме уште една класа. Во следниот пример е прикажан целиот код од новата класа во една целина.
Дозволи си онолку време колку што ти треба за да го проучиш.
Јас не сум во брзање, ќе те причекам во следната лекција. 

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = [] # Нова празна низа 
                     # за зачувување Blurbs
      end
      
      def add_a_blurb(mood, content)
        # Овој знак << значи додај го елементот на крајот од низата
        @blurbs << Blurb.new(mood, content)
      end
      
      def show_timeline
        puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"
        
        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end
    
    myapp = Blurbalizer.new "The Big Blurb"
