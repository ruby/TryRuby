---
lang:   EN
title:  Noble Kinsmen
answer: ^The Two Noble Kinsmen$
ok:     That's much better
error:  
load:   prev
---

Okay we now have a list of plays from the internet. The list was in the json format.
Fortunately for us Ruby kindly provides a method to convert json data to a Ruby hash.
The _get\_shakey_ method already did that for us.

But since the structure of the json data is retained in the hash, it is still a bit difficult to read.
Let us write a method to display the plays nicely.

If you inspect the list of plays carefully you will see that it has a kind of nested
structure. (This is actually quite common in data you get from the internet.)
Looks like this:

<ul>
  <li>"William Shakespeare"
  <ul>
      <li>"1"
      <ul>
        <li>"title": "The Two Gentlemen of Verona"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>"2"
      <ul>
        <li>"title": "The Taming of the Shrew"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>...</li>
  </ul>
  </li>
</ul>

To list the plays we first have to access the top "William Shakespeare" hash element by it's name.
Next we have to __iterate__ through each element below it.

Ruby has a method for iterating. It is called __each__. We have seen it before when
creating our book rating system.

Everything that method __each__ returns is passed to a block:

    s = get_shakey
    
    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }
