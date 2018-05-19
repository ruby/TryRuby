---
title: "TryRuby's history"
date: 2015/01/01
author: Ivo Herweijer
the_summary: Some information about the history of TryRuby and the reasons for being of TryRuby<sup>R4</sup>.
---

## History
This is the fourth iteration of the TryRuby website.
TryRuby was originally created by a famous Ruby enthusiast working under the nickname 'why
the lucky stiff', a.k.a. \_Why. You can read more about him on
<a href="http://en.wikipedia.org/wiki/Why_the_lucky_stiff" target="_blank">Wikipedia</a>.

\_Why doesn't exist anymore, but TryRuby lives on. It was first recreated by Andrew McElroy
and David Miani. Next Eric Allam and Nick Walsh took over (Codeschool/EnvyLabs).

### Why_
This fourth iteration of TryRuby was created for several reasons. 

- The lesson content was getting a bit dated. For instance the stuff about reading and writing
  disk files does not really belong in an entry level course these days. Writing blog software
  is also not very appealing anymore
- Lesson content also missed some important information (like __if__ statements)
- All previous TryRuby versions consisted of an irb interpreter with a web front-end.
  Even though some security measures have been taken (isolating and restricting the irb process
  and whitelisting input), this still sounds like a bad idea from a security perspective!  
  TryRuby<sup>R4</sup> runs inside the web browser

### Changes
By changing the TryRuby mechanics from running irb on a server, to running Opal in the web browser,
I had to make some alterations to the TryRuby lesson content. Also updated some outdated stuff.

- Opal uses immutable strings, so [ ] based string manipulation was replaced with gsub
- File reading and writing removed and replaced by getting a json file from the internet
- Since irb is not used anymore, it is possible (necessary) to run entire programs, not enter
  commands line-by-line
- Removed the pop-up stuff
- Removed mousehole stuff
- Improved the feedback given to the user based on the program's output a bit
- Added support for lesson content in multiple languages. The Spanish, Brazilian Portuguese,
  Japanese, Russian, Ukrainian, Macedonian, Dutch, Turkish and French translations are available.  
  __If YOU would like to add a translation to TryRuby you are most welcome !__
- Added explanation of if/else statements
- Changed the subject of the "Class" tutorials from building a blog (so last decade) to making an
  instant messaging app called: Blurbalizer<sup>TM</sup>
- Used markdown with frontmatter for editing lesson content
- Used middleman as development environment
- Added some articles with more background information for aspiring software developers

### Next
Where can TryRuby<sup>R4</sup> be improved ? Couple of things I've thought of.
Your opinion is most welcome:

- Add some self evaluation questions at the end of each chapter
- Maybe remove the lessons about classes. It's a bit advanced for an absolute beginners
  course
