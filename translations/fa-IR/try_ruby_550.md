---
lang:   FA-IR
title:  همه‌چیز به ترکیب کردن برمی‌گرده
answer: :-
ok:     Moody!
error:
load:   prev
---

خیلی از چیزای قشنگ و باحال رو می‌شه با همین بخش‌های سادهٔ روبی ساخت، مخصوصا وقتی این تیکه‌ها رو با هم ترکیب می‌کنی و ازشون چیزای جدید درمیاری. 
اینجا ما یه برنامه داریم که از یه کلاس ساخته شده که خودش داخلش از یه کلاس دیگه استفاده می‌کنه. 
جالبه بدونی روبی توی این جور موجودات ترکیبی خیلی خوب عمل می‌کنه. به این سبک برنامه‌نویسی شیءگرا می‌نامند.

ما به __آخرین تمرین برنامه‌نویسی__ TryRuby رسیدیم. 
اگه دوست داری، می‌تونی خودت یه‌سری قابلیت جدید به Blurbalizer<sup>TM</sup> اضافه کنی.

مثلا شاید بخوای خلق و خو رو به صورت شکلک توی متد __show_timeline__ چاپ کنی. برای این کار می‌تونی یه متد به اسم _moodify_ به کلاس Blurb<sup>TM</sup>  اضافه کنی و بعدش ازش توی متد _show\_timeline_ استفاده کنی:

    class Blurb
      attr_accessor :content, :time, :mood

      def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
      end

      def moodify
        if    @mood == :sad
          return ":-("
        elsif @mood == :happy
          return ":-)"
        # Add other moods here
        end

        # The default mood
        ":-|"
      end
    end

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = []
      end

      def add_a_blurb(mood, content)
        @blurbs << Blurb.new(mood, content)
      end

      def show_timeline
        puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs"

        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end

    myapp.show_timeline
