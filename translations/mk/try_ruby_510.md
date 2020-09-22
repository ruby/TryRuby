---
lang:   МК
title:  Ти ја научи апликацијата да ги одбива непотребните работи
answer: Blurb:
ok:     Blurb е додаден
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end;blurb1=Blurb.new(:sick,"Today Mount Hood Was Stolen!")
---

Дали забележа дека внатре во класата ние користевме at-симболи (@time).

__Надвор__ од класата, ние искористивме accessors:

> __blurb.time = Time.now__

но, __внатре__ ги користиме __променливите од објектот__:

> __@time = Time.now__

Тие се едно исто, но прикажани на две различни места во твојата програма.

### Креирај нов Blurb<sup>TM</sup>
Кога нов Blurb<sup>TM</sup> е креиран, initialize методот се користи за да провери дали има нови параметри.

Во овој случај, нам ни требаат два параметри:

    Blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
