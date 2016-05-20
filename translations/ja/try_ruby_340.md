---
lang:   JA
title:  RubyでDef Leppardと書くとLeppardメソッドの定義になる
answer: ^tame
ok:     ならしても、ダメにしない
error:  
---

大丈夫です。ちゃんとできました。あなたは独自のメソッドを定義しました。
defに続いて、メソッドの名前を書きます。
そして、必要な場合は、その後に引数のリストを書きます。
けっして怖くないですし、危なくもありません！
すべきことは、中身をRubyのコードで埋めて最後にendで終わることです。

以下に例を示します。
    
    def tame( number_of_shrews )
      number_of_shrews.times {
        puts "じゃじゃ馬をならしました"
      }
    end
    
> __補足__  
> この章のタイトルにピンとこなかったでしょうか。
> <a href="https://ja.wikipedia.org/wiki/デフ・レパード" target="_blank">Def Leppard</a>
> はかつて有名だったイギリスのロックバンドです。
