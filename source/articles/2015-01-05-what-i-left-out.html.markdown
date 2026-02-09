---
title: What I've left out
date: 2015/01/05
author: Ivo Herweijer
the_summary: TryRuby is a Ruby course for beginners. Its not possible to tell you everything about Ruby in 15 minutes. Here is an overview of what I have left out.
---


## What I've left out

TryRuby is a Ruby course for beginners. Its not possible to tell you everything about Ruby in
15 minutes. Here is an overview of some of the things that I have left out.

### Comments
To add text to your Ruby file, you can do so with comments. Comments can be used for
documentation, explain parts of your code or anything else you'd like.

Single line comments

    # A comment, this makes your code easier to read
    x = 2 # comments can also be placed after a statement

Multiline comments

    puts "Hello World"
    =begin
    This comment can span multiple lines. You denote the beginning and end of the
    comment with the keywords =begin and =end at the start of separate newlines.
    =end

### Else-if
There is an __elsif__ statement so you can do this:

    # elsif example
    if a == 1
      do_thing1
    elsif b == 2
      do_thing2
    else
      do_thing3
    end

### Case
A variation on the if-elsif-else theme. Useful when you have to test a variable against a lot
of different values:

    # Case example 1
    case a
    when 1
      do_thing1
    when 2
      do_thing2
    when 3
      do_thing3
    else
      do_thing4
    end

And there is an alternate form:

    # Case example 2
    case
    when a == 1
      do_thing1
    when b == 2
      do_thing2
    when a >= 3
      do_thing3
    else
      do_thing4
    end

### Regular expressions
Sometimes you have a string and you want to test if that string contains some text. For instance if
'user\_123' starts with 'user\_'. You could use a test like __my_string[0..4] == 'user\_'__, but
there is a much more elegant and flexible way to do this kind of string testing, called
regular expressions.

Reason this isn't in TryRuby lessons is the fact that regular expressions have a syntax that is so
strange at first, it might make your head explode. If you see a complex regular expression for the
first time, it is like a monkey has been randomly bashing away on a keyboard.

The regex for the example mentioned above is relatively simple:

    my_string.match( /^user_(\d+)/ )

This will return __nil__ if my_string didn't conform to the regex, or a matchdata object if it did.
In the last case it will also give you the 123 part as the matched data.

The Ruby <a href="http://www.ruby-doc.org/core/Regexp.html" target="_blank">documentation</a> has
a pretty good explanation on regex's. And googling on _regex_ will give you millions of hits.

### Method missing
When you try to use a method on your class that isn't defined, Ruby will look for a
<a href="http://www.ruby-doc.org/core/BasicObject.html#method-i-method_missing" target="_blank">method\_missing</a>
method in your class. If present, the method_missing method will be called and handed the name of the
method you wanted to call in the first place as a parameter.

Now you can handle the missing method as if it existed. For instance you might want to implement
a _sort\_by\_variable_ method. Where _variable_ is the name of one of your class variables.

### Inspection
Ruby can give you a lot of information about objects when a program is running. What an object is and
what methods it responds to.

    # Inspection
    s = 'abc'
    puts s.class
    puts s.methods
    puts s.respond_to?(:match)

### Error handling
Reality is that all programs can run into errors. Errors that only raise their ugly heads when your 
program is running. And even when your code is flawless. That just happens.  
You can let your program crash, but it is usually nicer if you let your program continue and politely tell
that an error has occurred and it can't continue what it was doing.
Ruby has a couple of facilities for this purpose:

    # Rescue
    begin
      some_method_that_might_run_into_an_error
    rescue => e
      puts "Error = #{e}"
    end

And sometimes you might even want your program to raise an error (like when the user did something really
stupid).

    # Raise
    raise "Yo dude seriously ? You can't enter zero for a divisor" if divisor == 0

### IO
You will often need to read or write diskfiles. That is easy in Ruby. For instance reading can be done with
<a href="http://www.ruby-doc.org/core/IO.html#method-i-read" target="_blank">IO.Read</a>.

    # Read a file
    file_contents = IO.Read("my_file")

See the documentation for more info.

### Spaceship operator
Ruby supports this strange thing: __<=>__ called the spaceship operator. It returns -1, 0 or 1 depending
on whether the left hand side is smaller, equal to or bigger than the right hand side. Useful for sorting.

      # Spaceship operator
      'a' <=> 'b'   => Returns -1

### Class inheritance
When you are coding objects (classes) that model some real life situation, you will often encounter
objects that are a subset of other objects. And there are many of such subsets.
This is where class inheritance comes to the rescue.

A very simple (and incomplete) example:

    # Class inheritance
    class Animal
      attr_reader :number_of_legs
    end
    
    class Cow < Animal
      #@number_of_legs = 4
    end

    class Chicken < Animal
      #@number_of_legs = 2
    end

The Cow and Chicken classes can use all attributes and methods that are defined for Animal.

A course or a book on _Object Oriented programming_ can teach you all about this important concept.

### Instance variables
In the lessons we mentioned _object variables_. Actually these should be called _instance variables_,
since these variables belong to one instance of a type of object.

### Modules and mixins
Sometimes you have two classes that have a lot of similar code, but they cannot inherit from a common
parent. To avoid having the same code in two places (something you really should avoid) you can
place the common code in a module and __mix that module into your class__.

Or you can mix-in an existing module like _Enumerable_:

      # Mix-in
      class Blurbalizer
        include Enumerable
        
        attr_reader :blurbs
        
        def initialize
          @blurbs = []
        end
        
        def each(&block)
          @blurbs.each{ |blurb| block.call(blurb) }
        end
      end

      Blurbalizer.new.methods
      
As long as you define method each, the Enumerable mixin now provides a lot of methods for free, like
map and sort.

### Meta programming
Unlike most other languages Ruby lets you do something called _Meta programming_. This means that a Ruby
program can change itself while it is running.
You can use this for example to read a table from a database, check the fieldnames of the table and create
a method to access each field by name.

### Garbage collection
In your code you are using variables all the time. Some variables are used from the start to finish, others
only for a very short time. For instance variables created inside methods.
But where do these variables go after you have discarded them ? Do they magically disappear ?  
No, these variables, and the associated computer memory, are collected by the
<a href="http://www.ruby-doc.org/core/GC.html" target="_blank">garbage collector</a>.

At regular intervals the garbage collector throws away all these old, unused, unloved variables. And thus
makes the associated computer memory free again, ready to be reused by your program.

Normally you never notice this cleanup. Except when you are running some time-critical program like a game.
Every couple of seconds the game shows a bit of a hiccup.

### Importing Ruby gems
Before you start coding to solve a programming problem it might be a good idea to see if somebody
else already solved the same problem. The <a href="http://rubygems.org/" target="_blank">RubyGems</a>
website holds a vast collection of premade Ruby code. There is bound to be something there
to give you a quick start to solve your coding problem. Gems are also very easy to install.

### DRY
Not really a (Ruby) technique, but more a concept, DRY stands for __D__on't __R__epeat __Y__ourself.
Meaning: do not write te same piece of code twice.  
When you are coding you will often find you need to write a bit of code that is the same as, or very similar
to, something you wrote before. Stop writing new code right then !!!  
Instead find the existing similar code and extract it into a new method. Call the new method from the
existing code and from the code you were about to write. Then test if everything works as expected.  
Advantages of this way of coding are that you write less and easier to maintain code.

### The price of concise readable code
Lastly, Ruby allows you to write very concise readable code. This comes with a price of course.  
To make concise (= short) code the methods you use need to be able to do a lot of powerful stuff.
This means that there have to be a lot of different methods, each one powerful in its own way.
Learning to write proper Ruby code means that you will have to know a lot of different methods
and this will take quite a bit of time.

Other programming languages might only have a short set of methods and are quicker to learn, but
making a real program in those languages involves a lot more work since you would have to recreate
the powerful methods that Ruby knows as standard.
