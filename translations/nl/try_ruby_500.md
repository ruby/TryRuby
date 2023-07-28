---
lang:   NL
title:  Dat kan sneller
answer: ^\d{4}
ok:     Genoteerd
error:  
---

Je app is nu al cool. Wat dacht je er van om jezelf wat werk uit handen te nemen.
Iedere keer dat er een Blurb<sup>TM</sup> gemaakt wordt moet je de tijd van posten
instellen. Best vervelend niet waar?

We kunnen een __initialize__ (initialiseer) methode aan onze klasse toevoegen.
Deze methode wordt uitgevoerd zodra je een nieuwe Blurb<sup>TM</sup> maakt.

Dan kunnen we ook meteen instellen dat de maximale Blurb<sup>TM</sup> tekst lengte
40 tekens is:

    class Blurb
      attr_accessor :tekst, :tijd, :stemming

      def initialize(stemming, tekst="")
        @tijd     = Time.now
        @tekst    = tekst[0..39]
        @stemming = stemming
      end
    end
    
    Blurb.new(:sick).tijd

(Parameter __tekst=""__ zorgt er voor dat we zeker weten dat _tekst_ een string is.
Ook als _Blurb.new_ wordt aangeroepen zonder parameters.)
