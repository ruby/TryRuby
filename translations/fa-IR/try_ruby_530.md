---
lang:   FA-IR
title:  قلمروی خودت
answer: Blurbalizer:
ok:     برنامه‌ام ساخته شد
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

خب، بیاید همه‌چیز را جمع‌بندی کنیم، این آخرین فصل از داستان خفن و هیجان‌انگیز Try Ruby ـه! 
حالا که یه دید کلی گرفتی که همه‌چی چطور کار می‌کنه، قراره باهاش چیکار کنی؟
توی خونه؟ توی فریزر سوپری محل؟ 
آدم باحالی هستی (جزو افراد پرتلاشی)، ولی خب یه کم راهنمایی هم نیاز داری.

### بیاید برنامه‌مون رو کامل کنیم
تا اینجا «ورودی» داریم، ولی هنوز برنامه واقعی نداریم.
برنامه‌مون هنوز اینا رو کم داره: یه اسم و عنوان، یه جایی که همه‌ی Blurb<sup>TM</sup>ها توش ذخیره بشن , یه جدول زمانی برای کار کردن. 

حدس بزن چه می‌کنیم، قراره از یه کلاس دیگه استفاده کنیم؛ کل کد این کلاس جدید رو یک‌جا بهت دادم. 
فقط __با حوصله__ بخونش و درکش کن. من عجله‌ای ندارم، تو درس بعدی منتظرت می‌مونم. 

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = [] # A fresh clean array
                     # for storing Blurbs
      end
      
      def add_a_blurb(mood, content)
        # The << means add to the end of the array
        @blurbs << Blurb.new(mood, content)
      end
      
      def show_timeline
        puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"
        
        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end
    
    myapp = Blurbalizer.new "The Big Blurb"
