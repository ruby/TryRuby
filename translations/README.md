# Translations

## Getting started

When adding a new translation:

- Create a new sub-directory in translations
- Copy the files from translations/en to the new sub-directory
- Add the new language to collector.rb (~ line 138)
- Translate
- Middleman/livereload should note any changes to translations and
  refresh the webpage for you
- Update the README file for the new translation, adding your name
  to the copyright message

## Suggestions

Some TryRuby things are difficult to translate. For instance the toast poem.
For the Dutch translation I have chosen not to translate this.

Since Ruby itself is English it is inevitable that some of the lesson
content contains English words. For the Dutch translation I've left in
all important English words (like hash) and gave a translation or description
the first time such a word is encountered.

You probably should not translate Blurb and Blurbalizer. I've also left
the Blurb content untranslated.

## Converted

The converted subdir contains the TryRuby R2 spanish translation, converted
into individual markdown files.

The numbering is in principle the same as the English version. But since I
modified the lesson content quite a lot it is not the same any more.