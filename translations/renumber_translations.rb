#!/usr/bin/env ruby

# A simple renumbering tool. Files for all languages are renumbered with an interval of 10.
# Not much checking is done (are there any files found at all, etc.)
# If --git option is added the renumbering will be executed as git commands

class RenumberTranslations

  def initialize(for_real, commitmessage = 'renumber translationfiles')
    @commitmessage = commitmessage
    get_languages
    get_files_per_languages
    renumber_files(for_real) if files_match
  end

  private

  def get_languages
    @languages = Dir.glob('*').select {|f| File.directory?(f) && f != '.' && f != '..' }
  end

  def get_files_per_languages
    @files = {}
    @languages.each do |lang|
      collection = {}
      Dir.glob("#{lang}/try_ruby_*.md").select do |f|
        collection[f.scan(/\d/).join.to_i] = f
      end
      @files[lang] = collection
    end
  end

  def files_match
    @languages.each do |lang_left|
      @languages.each do |lang_right|
        if lang_left != lang_right
          @files[lang_left].each do |file_index, fname|
            if !@files[lang_right].has_key?(file_index)
              puts "No comparable file #{fname} for language: '#{lang_right}' found. Quitting."
              return false
            end
          end
        end
      end
    end
  end

  def renumber_files(for_real)
    indexes = @files[@languages.first].each_key.to_a.sort

    phase1 = phase2 = ''

    @languages.each do |lang|
      if for_real
        2.times do |phase|
          for i in 0..(indexes.length - 1)
            if phase == 0
              phase1 += "git mv #{@files[ lang ][ indexes[i] ]} #{lang}/try_ruby_#{indexes[i]}_temp.md\n"
            else
              phase2 += "git mv #{lang}/try_ruby_#{indexes[i]}_temp.md #{lang}/try_ruby_#{(i+1) * 10}.md\n"
            end
          end
        end
      else
        for i in 0..(indexes.length - 1)
          puts "move: \"#{@files[ lang ][ indexes[i] ]}\" to: \"#{lang}/try_ruby_#{(i+1) * 10}.md\""
        end
      end

      puts ' ' if !for_real
    end

    # git commit in between phases
    if for_real
      puts phase1
      puts "git commit -m \"#{@commitmessage} - phase: 1\"\n\n"
      
      puts phase2
      puts "git commit -m \"#{@commitmessage} - phase: 2\"\n"
    else
      puts 'Run this program again with --git option to create (not execute) git commands' if !for_real
    end
  end

end

for_real = ARGV[0] ? ARGV[0] == '--git' : false

RenumberTranslations.new(for_real)
