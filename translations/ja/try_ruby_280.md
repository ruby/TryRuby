---
lang:   JA
title:  辛辣な書評をつけてしまった？
answer: :mediocre
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre, "Bumblebees" => :mediocre}
ok:     やった！すごいです。評価のスコアカードを作成しました
error:  
---

辛辣か不公平な書評をつけてしまいましたか？
では、__ratings__という新しいハッシュを用意してスコアをつけていくようにしましょう。

どうするかというと、そうですね、書評をカウントアップしていくことにします。以下を入力してください。

    ratings = Hash.new {0}
    
    books.values.each { |rate|
      ratings[rate] += 1
    }
    
    puts ratings

コード中の棒線はパイプ文字です。キーボードだと、Enterキーの上あたりにあるはずです。

このコードの_+= 1_という行は、値を1増やすという意味になります。

ここで起きていることをぜんぶ理解できないとしても、心配しないでください。
あとで明らかにしていきます。
