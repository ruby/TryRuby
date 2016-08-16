---に
lang:   JA
title:  あなた自身の芝
answer: Blurbalizer:
ok:     アプリが作られました
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

さて、全部をまとめ上げましょう。ここからがTry Rubyの魅惑的な壮大なストーリーの最後の章です！
今やあなたはすべての機能を堪能しました。
家の周りやあなたが経営する食料品店の冷蔵庫の中で、どうそれを使うつもりですか？
あなたは（私のお気に入りの）偉大な人物ではありますが、ガイドは必要です。

### アプリケーションを完成させましょう
あなたはアプリの要素は持っています。
けれど実際のアプリではありません。
タイトルやすべてのBlurbs<sup>TM</sup>を格納する場所、順序通りのタイムラインなどが必要です。

推測したとおり、これから新しい別のクラスを作ります。
新しいクラスのためのコードを全て一度に提供します。
ぜんぜん勉強に__時間をかけてかまいませんよ__。
私は急ぎませんよ。次のレッスンにあなたが来るのを待っています。

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
