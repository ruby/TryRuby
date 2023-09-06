---
lang:   DE
title:  Aufpeppen der Sache
answer: ^\d{4}
ok:     Notiert
error:  
---

Cool, deine App ist großartig. Hey, machen wir es dir ein bisschen leichter. Du wirst die Zeit nicht jedes Mal so eingeben wollen, wenn du Blurb<sup>TM</sup> benutzt.

Du willst nur den Inhalt eingeben und die Stimmung festlegen, richtig?

Fügen wir eine __initialize__-Methode zu unserer Klasse hinzu. Diese Methode wird immer dann aufgerufen, wenn ein neuer Blurb erstellt wird. Gleichzeitig können wir die Länge des Blurb-Inhalts auf 40 Zeichen begrenzen.

    class Blurb
      attr_accessor :content, :time, :mood

      def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
      end
    end
    
    Blurb.new(:sick).time

(Der Parameter __content=""__ ist dazu da, um sicherzustellen, dass content eine String ist,
auch wenn kein Parameter content an die Methode initialize übergeben wird.)
