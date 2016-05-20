---
lang:   JA
title:  あのBlurbは何のこと？
answer: Today
ok:     Blurbをもたらしました
error:  
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "The Big Blurb";myapp.add_a_blurb :sick,"Today Mount Hood Was Stolen!";myapp.add_a_blurb :confused,"I can not believe Mt. Hood was stolen!";myapp.add_a_blurb :dazed,"I am speechless!";myapp.add_a_blurb :mad,"It was stolen by a giraffe !!";myapp.add_a_blurb :sad,"I Left my Hoodie on the Mountain!";myapp.add_a_blurb :mad,"I am never going back to that mountain."
---

その調子です。Blurbalizer<sup>TM</sup>クラスの中のコードがどんなことをしているか理解しましたか？

> Blurbalizer<sup>TM</sup>クラスには2つの__メソッド__（add\_a\_blurbとshow\_timeline）があります。
> アクセサと同じように、これらのメソッドはクラスの外側で使用できます。

Blurbalizer<sup>TM</sup>を使うときです。すでにいくつかのBlurb<sup>TM</sup>を読み込んであります。
ですが、あなた自身の手でもBlurbを自由に追加してみてください。

Blurb<sup>TM</sup>は直接作成せず、Blurbalizer<sup>TM</sup>クラスのadd\_a\_blurbメソッドを使って作成します。これによって、すべてのBlurb<sup>TM</sup>がmyappオブジェクトの中に格納されていることを確認できます。

    myapp.add_a_blurb :moody, "ここにBlurbを追加します"
    
    myapp.show_timeline
