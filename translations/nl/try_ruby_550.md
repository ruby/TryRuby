---
lang:   NL
title:  De Combinatie Telt
answer: :-
ok:     Stemmig !
error:  
load:   prev
---

Door de eenvoudige onderdelen van Ruby te combineren kunnen hele mooie programma's
worden gemaakt.  
Hier hebben we een klasse gebruikt die weer een andere klasse bevat. Ruby kan
uitstekend met zo'n aanpak overweg. Dit heeft ook een naam:  
_object georiënteerd programmeren_.

We zijn alweer bij de __laatste programmeer oefening__ van TryRuby.
Als je zin hebt kan je nog wat meer features toevoegen aan Blurbalizer<sup>TM</sup>.

Misschien is het wel leuk om de stemming ook als smiley weer te geven in de
__toon_timeline__ methode.
Je zou een _smiley_ methode kunnen toevoegen aan de Blurb klasse en
die daarna gebruiken in de _toon\_timeline_ methode:

    class Blurb
      attr_accessor :tekst, :tijd, :stemming
      
      def initialize(stemming, tekst="")
        @tijd     = Time.now
        @tekst    = tekst[0..39]
        @stemming = stemming
      end
      
      def smiley
        if    @stemming == :verdrietig
          return ":-("
        elsif @stemming == :blij
          return ":-)"
        # Voeg hier andere stemmingen toe
        end
        
        # De 'standaard' stemming
        ":-|"
      end
    end
    
    class Blurbalizer
      def initialize(titel)
        @titel  = titel
        @blurbs = []
      end
      
      def voeg_blurb_toe(stemming, tekst)
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
    
    mijnapp.toon_timeline
