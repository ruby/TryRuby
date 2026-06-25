---
lang:   FA-IR
title:  سریع‌تر کردنش
answer: ^\d{4}
ok:     یادداشت شد
error:  
---

عالیه، برنامه‌ات خیلی باحاله؛ حالا بیایم کارو برات راحت‌تر کنیم.
تو که نمی‌خوای هر بار که یه Blurb<sup>TM</sup> جدید می‌سازی، زمان رو دستی تنظیم کنی که، درسته؟

می‌خوای فقط متن رو بنویسی و حالت خلق و خو رو مشخص کنی، همین دیگه کافی هست؟

پس بیایم یه متد __initialize__ به کلاس اضافه کنیم، این متد هر بار که یه Blurb<sup>TM</sup> جدید ساخته می‌شه، اجرا می‌شه.
همزمان می‌تونیم طول متن Blurb<sup>TM</sup> رو هم به ۴۰ نویسه محدود کنیم.

    class Blurb
      attr_accessor :content, :time, :mood

      def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
      end
    end
    
    Blurb.new(:sick).time

(پارامتر __<span dir="ltr">content=""</span>__ گذاشته شده تا مطمئن باشیم که متن محتوا همیشه یه رشته است، 
حتی اگه وقتی متد initialize فراخوانی می‌شه، هیچ متنی بهش داده نشه.)
