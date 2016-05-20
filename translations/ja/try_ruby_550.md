---
lang:   JA
title:  すべてを繋ぎ合わせます
answer: :-
ok:     気分いい！
error:  
load:   prev
---

Rubyのシンプルな部品を使うと、とりわけ新しいものに部品をつなぎ合わせる際、
いくらか美しいものにすることが可能です。
ここで別のクラスを含むクラスで作られたアプリを作ったように、
Rubyはある種の人間にとって本当に良いことをします。
それはオブジェクト指向プログラミングと呼ばれます。

TryRubyの__最後のプログラミングの訓練__にたどり着きました。
やってみたければ、あたらしい機能をBlurbalizer<sup>TM</sup>に追加できます。

おそらく、__show_timeline__メソッドの中に顔文字として気分を出力したいでしょう。
_moodify_メソッドをBlurb<sup>TM</sup>に追加し、_show\_timeline_メソッド内で使います。

    class Blurb
      attr_accessor :content, :time, :mood
      
      def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
      end
      
      def moodify
        if    @mood == :sad
          return ":-("
        elsif @mood == :happy
          return ":-)"
        # Add other moods here
        end

        # The default mood
        ":-|"
      end
    end
    
    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = []
      end
      
      def add_a_blurb(mood, content)
        @blurbs << Blurb.new(mood, content)
      end
      
      def show_timeline
        puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs"
        
        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end
    
    myapp.show_timeline
