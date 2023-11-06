---
lang:   DE
title:  Dein eigenes Revier
answer: Blurbalizer:
ok:     Meine App erstellt
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

Okay, bringen wir die Sache zu Ende, Kleines. Hier ist das letzte Kapitel der 
PACKENDEN, epischen Geschichte von Try Ruby!
Jetzt, wo du einen Eindruck davon bekommen hast, wie das Ganze funktioniert, 
wie wirst du es zu Hause und in der Tiefkühltruhe deines Lebensmittelhändlers 
verwenden?
Du bist eine großartige Person (eine meiner Favoriten), aber du brauchst 
Orientierung.

### Lass uns deine App fertigstellen
Du hast App-Einträge, aber keine eigentliche App.
Es braucht immer noch einen Titel, einen Ort, an dem alle Blurbs<sup>TM</sup> 
gespeichert werden, und eine Timeline, um zu funktionieren.

Rate mal, was, wir werden eine weitere Klasse verwenden. Ich habe den gesamten 
Code für die neue Klasse in einem Rutsch angegeben.
__Nimm dir einfach die Zeit__, ihn zu lesen.  
Ich habe es nicht eilig, ich werde in der nächsten Lektion auf dich warten.

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = [] # A fresh clean array
                     # for storing Blurbs
      end
      
      def add_a_blurb(mood, content)
        # The << means add to the end of the array
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
