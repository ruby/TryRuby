# Translations

## Getting started

When adding a new translation:

- Create a new sub-directory in translations
- Copy the files from translations/en to the new sub-directory
- Add the new language to collector.rb (~ line 160)
- Add the new language to _navbar.html.erb at the end
- Translate
- If you are running `bin/middleman server`, Middleman/livereload
  should notice any changes to translations and refresh the webpage for you,
  available on `http://localhost:4567`
- Update the README file for the new translation, replacing all names in
  the copyright message with your own

## Suggestions

Some TryRuby things are difficult to translate. For instance the toast poem.
For the Dutch translation I have chosen not to translate this.

Since Ruby itself is English it is inevitable that some of the lesson
content contains English words. For the Dutch translation I've left in
all important English words (like hash) and gave a translation or description
the first time such a word is encountered.
I have translated variable names (like ticket) and method arguments into
something more understandable for a Dutch reader. I've also added a comment
about English being the programmers 'native' language on the 'toast poetry'
page.

You probably should not translate Blurb and Blurbalizer. But feel free to
translate the Blurb content.

## Reference
For future reference the original content of TryRuby (version 2)
is included. See `ruby-guide-en.html_` and `ruby-guide-es.html_`.

## Tips

- You can use `<br/>` in the _ok_ and _error_ responses to split
  the response over multiple lines.
  Please limit line length to 80 characters
