---
lang:   TR
title:  Kendi Çimin
answer: Blurbalizer:
ok:     Aplikasyonum yaratıldı
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

Tamam, hadi olayları toplayalım, ufaklık. İşte Try Ruby'nin etkileyici epik hikayesinin son bölümü!
Şimdi buraya geldiğine göre her şeyin nasıl çalıştığının bir tadına vardın, evinde ve bakkan dondurucusunda
nasıl kullanacaksın?
Mükemmel bir insansın (favorilerimden biri), ancak yol gösterilmesine ihtiyacın var.

### Hadi aplikasyonunu bitirelim
Aplikasyon girdilerin var, ancak gerçek bir aplikasyonun yok.
Hala çalışmak için bir başığa, Blurbs<sup>TM</sup>'lerin depolanacağı bir yere ve bir zaman çizelgesine ihtiyacı var.

Bil bakalım ne yapacağız, bir tane daha class kullanacağız. Tüm kodumu yeni class'ta tekte verdim.
Sadece __ağırdan alarak__ anlamaya çalış.
Benim acelem yok, seni diğer derste bekleyeceğim.

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
