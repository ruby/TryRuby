# TryRuby R4

This repo holds the source of the TryRuby.nl website. TryRuby is a website
where you can learn the Ruby language. Starting from zero knowledge about
programming you can learn the basics of Ruby in 56 short lessons.

## Credits
Try Ruby version 1 by _why the lucky stiff_  
Try Ruby version 2 by _Andrew McElroy & David Miani_  
Try Ruby version 3 by _Eric Allam & Nick Walsh_  
Try Ruby version 4 by _Ivo Herweijer_  

This website is partially based on OpalRb.org by _Adam Beynon_.

### Translations
Spanish translation by _Jesus Gabriel y Galan_ & _Pablo García_  
Dutch translation by _Ivo Herweijer_  

## Preparing
Clone this repo, and use bundler to get dependencies:

    $ bundle install

The website is built using middleman. Livereload is enabled.

## Run development website

    $ bundle exec middleman server

Then visit `http://localhost:4567`.

## Publishing

    $ bundle exec middleman build

The `build` directory now holds a publishable version of TryRuby.

## Translators
When adding a new translation: see the README file in /translations.

## Why
See the website [TryRuby.nl](http://TryRuby.nl/articles/try-ruby-version-4/)
for more background information on how and why this website was created.

## The MIT License

Copyright (C) 2014-2015 Ivo Herweijer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
