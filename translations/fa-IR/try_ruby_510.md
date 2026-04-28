---
lang:   FA-IR
title:  به برنامه خود یاد دادی چیزهای بی‌ارزش را رد کنه
answer: Blurb:
ok:     Blurb اضافه شد
error:
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end;blurb1=Blurb.new(:sick,"Today Mount Hood Was Stolen!")
---

دیدی که داخل کلاس از <ruby>نماد<rt>symbol</rt></ruby> @ استفاده کردیم (<span dir="ltr">@time</span>).

__خارج__ از کلاس، از accessorها استفاده می‌کنیم:

> __blurb.time = Time.now__

اما __داخل__ کلاس از __متغیرهای خود شی__ استفاده می‌کنیم:

> __<span dir="ltr">@time = Time.now</span>__

این‌ها دقیقا یک چیز هستن، اما در دو جای متفاوت از برنامه بیان شدن.

### ساخت یه Blurb<sup>TM</sup> دیگه
وقتی یه Blurb<sup>TM</sup> جدید می‌سازیم، متد initialize بررسی می‌کنه که چه پارامترهایی به new داده شده.

ما این بار دو تا پارامتر داریم:

    blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"

> داخل کلاس با @ کار می‌کنیم تا متغیرهای داخلی شی رو دستکاری کنیم، بیرون کلاس با accessorها.