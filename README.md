# TryRuby R4

This repo holds the source of the TryRuby website. TryRuby is a website
where you can learn the Ruby language. Starting from zero knowledge about
programming you can learn the basics of Ruby in 56 short lessons.

## Credits
Try Ruby version 1 by _why the lucky stiff_  
Try Ruby version 2 by _Andrew McElroy & David Miani_  
Try Ruby version 3 by _Eric Allam & Nick Walsh_  
Try Ruby version 4 by _Ivo Herweijer_  

This website is partially based on OpalRb.com by _Adam Beynon_.

### Translations
Spanish translation by _Jesus Gabriel y Galan_ & _Pablo García_  
Dutch translation by [_Ivo Herweijer_](https://github.com/easydatawarehousing)  
Brazilian Portuguese translation by [_Ricardo da Verdade Silva_](https://github.com/ricardovsilva)  
Japanese translation by _Koji Shimada_ & _Masayoshi Takahashi_  
Russian translation by [_Alexander Nikolaev_](https://github.com/startaper)  
Ukrainian translation by [_Andrii Palchik_](https://github.com/andriipalchik)  

Suggestions to improve translations are welcome.
If you submit a pull request updating a translation please
only change the files in folder _translations_,
not the json files in folder _source_.
These files will be updated automatically by the build/publish task.

## Preparing
Clone this repo, and use bundler to get dependencies:

    $ bundle install

The website is built using middleman. Livereload is enabled.

Note: to install the 'eventmachine' gem a ruby development environment needs to
be present. You may need to run something like:

    $ sudo apt-get install ruby2.3-dev

## Run development website

    $ bundle exec middleman server

Then visit `http://localhost:4567`.

## Publishing

    $ bundle exec rake publish

Git branch 'gh-pages' now holds the publishable version of TryRuby, accessible
via [try.ruby-lang.org/](https://try.ruby-lang.org/).

## Translators
When adding a new translation: see the README file in /translations.

## Why
See the website [try-ruby-version-4](https://try.ruby-lang.org/articles/try-ruby-version-4/)
for more background information on how and why this website was created.

## The MIT License

Copyright (C) 2014-2019 Ivo Herweijer

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
