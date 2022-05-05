---
lang:   ZH
title:  Blurb究竟是什么
answer: Today
ok:     展示所有的blurbs
error:
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "The Big Blurb";myapp.add_a_blurb :sick,"Today Mount Hood Was Stolen!";myapp.add_a_blurb :confused,"I can not believe Mt. Hood was stolen!";myapp.add_a_blurb :dazed,"I am speechless!";myapp.add_a_blurb :mad,"It was stolen by a giraffe !!";myapp.add_a_blurb :sad,"I Left my Hoodie on the Mountain!";myapp.add_a_blurb :mad,"I am never going back to that mountain."
---

你来了。想通了前面Blurbalizer<sup>TM</sup>类的代码了吗？

> 在Blurbalizer<sup>TM</sup>类中有两个__方法__ (add\_a\_blurb 和 show\_timeline).
> 你可以在类外调用这些方法，就如同存储器一样。

是时候使用Blurbalizer<sup>TM</sup>了。我已经预载了一些Blurb，你可以自己创建你的。

我们不直接创建Blurbs<sup>TM</sup>，而是通过Blurbalizer<sup>TM</sup>类中的
add\_a\_blurb __方法__ 。这样我们可以确保所有的Blurbs<sup>TM</sup被储存在
myapp 对象中。

    myapp.add_a_blurb :moody, "Add Blurb here"

    myapp.show_timeline
