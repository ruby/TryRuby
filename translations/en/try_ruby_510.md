---
lang:   EN
title:  Twats it all about?
answer: 
ok:     
error:  
load:   prev;class Twatify;attr_reader :title;def initialize(title);@title=title;@twatlist=[];end;def add_a_twat(mood, content);@twatlist << Twat.new(mood, content);@twatlist.each {|t| t.time -= 73};end;def show_timeline;puts "Twatify: #{@title} has #{@twatlist.count} Twats\n";@twatlist.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Twatify.new "The big twat";myapp.add_a_twat :sick,"Today Mount Hood Was Stolen!";myapp.add_a_twat :confused,"I can not believe Mt. Hood was stolen!";myapp.add_a_twat :dazed,"I am speechless!";myapp.add_a_twat :mad,"It was stolen by a giraffe !!";myapp.add_a_twat :sad,"I Left my Hoodie on the Mountain!";myapp.add_a_twat :mad,"I am never going back to that mountain."
---

There you are. Did you figure out what all that code in the Twatify<sup>TM</sup> class does ?

In the Twatify<sup>TM</sup> class are two __methods__ (add\_a\_twat and show\_timeline). You can use
a method outside the class, just like we did with accessors.

Time to start using Twatify<sup>TM</sup>. I already loaded some Twats<sup>TM</sup> for you,
but feel free to add your own.

We're no longer creating Twats<sup>TM</sup> directly, but we use the add\_a\_twat __method__ of the
Twatify<sup>TM</sup> class. This way we can be sure all our Twats<sup>TM</sup> are stored.

    myapp.add_a_twat :moody, "Add Twat here"
    
    myapp.show_timeline
