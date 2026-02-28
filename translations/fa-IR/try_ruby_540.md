---
lang:   FA-IR
title:  این Blurb دربارهٔ چیه؟
answer: امروز
ok:     Blurbs را بیاور
error:
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "The Big Blurb";myapp.add_a_blurb :sick,"Today Mount Hood Was Stolen!";myapp.add_a_blurb :confused,"I can not believe Mt. Hood was stolen!";myapp.add_a_blurb :dazed,"I am speechless!";myapp.add_a_blurb :mad,"It was stolen by a giraffe !!";myapp.add_a_blurb :sad,"I Left my Hoodie on the Mountain!";myapp.add_a_blurb :mad,"I am never going back to that mountain."
---

خب، رسیدی اینجا. متوجه شدی این همه کدی که توی کلاس Blurbalizer<sup>TM</sup> نوشته شده دقیقا داره چی کار می‌کنه؟

> توی کلاس Blurbalizer<sup>TM</sup> دو تا __متد__ داریم: add\_a\_blurb و show\_timeline. 
> متدها رو می‌تونی بیرون از کلاس صدا بزنی، درست همون طوری که قبلا با accessorها کار می‌کردیم.

حالا وقتشه واقعا از Blurbalizer<sup>TM</sup> استفاده کنیم. من از قبل چندتا Blurb<sup>TM</sup> برات آماده کردم، ولی دستت کاملا بازه که مال خودت رو هم اضافه کنی.

دیگه خودمون مستقیم Blurb<sup>TM</sup> نمی‌سازیم، در عوض از __متد__ add\_a\_blurb داخل کلاس Blurbalizer<sup>TM</sup> استفاده می‌کنیم. چون این‌طوری مطمئن می‌شیم همه Blurbها مرتب و منظم داخل همون شی myapp ذخیره می‌شن.

مثلا این‌جوری می‌تونی یه Blurb جدید اضافه کنی:

    myapp.add_a_blurb :moody, "Add Blurb here"

    myapp.show_timeline
