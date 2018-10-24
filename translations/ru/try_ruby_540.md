---
lang:   EN
title:  What's that Blurb all about?
answer: Today
ok:     Bring on the blurbs
error:
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "The Big Blurb";myapp.add_a_blurb :sick,"Today Mount Hood Was Stolen!";myapp.add_a_blurb :confused,"I can not believe Mt. Hood was stolen!";myapp.add_a_blurb :dazed,"I am speechless!";myapp.add_a_blurb :mad,"It was stolen by a giraffe !!";myapp.add_a_blurb :sad,"I Left my Hoodie on the Mountain!";myapp.add_a_blurb :mad,"I am never going back to that mountain."
---

There you are. Did you figure out what all that code in the Blurbalizer<sup>TM</sup> class does?

> In the Blurbalizer<sup>TM</sup> class are two __methods__ (add\_a\_blurb and show\_timeline).
> You can use a method outside the class, just like we did with accessors.

Time to start using Blurbalizer<sup>TM</sup>. I've already loaded some Blurbs<sup>TM</sup> for you,
but feel free to add your own.

We're no longer creating Blurbs<sup>TM</sup> directly, but we use the add\_a\_blurb __method__ of the
Blurbalizer<sup>TM</sup> class. This way we can be sure all our Blurbs<sup>TM</sup> are stored in the
myapp object.

    myapp.add_a_blurb :moody, "Add Blurb here"

    myapp.show_timeline
