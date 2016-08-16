---
lang:   JA
title:  アクセサはぶらぶらとした手
answer: Blurb:
ok:     はじめての手
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;end
---

なかなか素質がありますね。これで、新しいBlurb<sup>TM</sup>クラスを手に入れました。

クラス定義の中で、attr\_accessorと呼ばれるメソッドを使いました。
こうした属性(_attr_ibute)メソッドの多くは、クラスにわずかばかりの設定を加えます。
これらの属性は、ちょうどクラスに付属する変数のようなものです。

これがどういうことかを考えてみます。
クラスは人のようなものです。星型の人を想像してください。
そして属性は、体を構成し他の人との握手も可能にする、ぶらぶらとした手です。

### ここから
Blurb<sup>TM</sup>を生成して、コンテンツを設定するために、以下のようにしてください。

    blurb1 = Blurb.new
    puts blurb1
    blurb1.content = "Today Mount Hood Was Stolen!"
