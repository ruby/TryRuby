---
lang:   JA
title:  ペースを速めて
answer: ^\d{4}
ok:     記録されました
error:  
---

いい感じです。じゃあ、ちょっとだけ軽く何か作ってみましょう。
Blurb<sup>TM</sup>するごとに毎回時間を設定したくはないでしょう。

内容の入力と気分の選択だけしたいですよね？

__initialize__メソッドをクラスに追加しましょう。
このメソッドは新しいBlurb<sup>TM</sup>がつくられるたびに呼び出されます。
同時に、Blurb<sup>TM</sup>の内容を40文字に制限することもできます。

    class Blurb
      attr_accessor :content, :time, :mood

      def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
      end
    end
    
    Blurb.new(:sick).time

（引数の__content=""__という部分は、内容が文字列であると確認するためにあります。
こう書くことで、たとえcontent部分の引数が与えられなったとしても空文字が渡されます。）
