---
lang:   NL
title:  Op eigen benen
answer: Blurbalizer:
ok:     Mijn app is gemaakt
error:  
load:   class Blurb;attr_accessor :tekst,:tijd,:stemming;def initialize(stemming, tekst="");@tijd=Time.now;@tekst=tekst[0..39];@stemming=stemming;end;end
---

Okee, de laatste loodjes. Nu begint het laatste hoofdstuk van het _aangrijpende,
heroïsche_ verhaal over Ruby.  
Je weet al heel goed hoe alles werkt en hoe je het moet toepassen.
Maar nog een klein beetje begeleiding kan vast geen kwaad.

### Af maken die app
Je hebt nu wel losse Blurbs<sup>TM</sup>, maar nog geen complete app.
Een app heeft een titel nodig, een plek om Blurbs<sup>TM</sup> te bewaren
en een tijdbalk kan ook geen kwaad.

Één keer raden. We hebben nog een klasse nodig. Ik heb hieronder alle code gezet
die je nodig hebt.  
Neem __rustig de tijd__ om het door te nemen. Kijk of je alles snapt.  
Ik heb geen haast. Ik wacht op je bij de volgende les.

    class Blurbalizer
      def initialize(titel)
        @titel  = titel
        @blurbs = [] # Een schoon nieuw array
                     # om Blurbs in op te slaan
      end
      
      def voeg_blurb_toe(stemming, tekst)
        # De << betekent: voeg iets toe aan het einde van een array
        @blurbs << Blurb.new(stemming, tekst)
      end
      
      def toon_timeline
        puts "Blurbalizer: #{@titel} heeft #{@blurbs.count} Blurbs"
        
        @blurbs.sort_by { |t|
          t.tijd
        }.reverse.each { |t|
          puts "#{t.tekst.ljust(40)} #{t.tijd}"
        }
      end
    end
    
    mijnapp = Blurbalizer.new "De Laatste Blurbs"
