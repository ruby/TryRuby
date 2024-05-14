require 'redcarpet'
require 'json'

class HTMLWithPants < Redcarpet::Render::HTML
  include Redcarpet::Render::SmartyPants
end

class Collector
  def initialize(source_path, target_path)
    @source_path = source_path
    @target_path = target_path
  end

  def collect
    get_files
    collect_sources if !@target_file || source_is_newer?
  end

  private

    def get_files
      @target_file = Dir.glob(@target_path)
      @target_file = !@target_file.empty? ? @target_file[0] : nil
      raise "Collector: Targetfile (#{@target_file}) is not writable" if @target_file && !File.writable?(@target_file)

      @sources     = Dir.glob(@source_path)

      # sort by numerical index
      if !@sources.empty?
        @sources = @sources.sort_by do |f|
          f.scan(/\d/).join.to_i
        end
      end
    end

    def source_is_newer?
      target_time = File.mtime(@target_file)

      @sources.each do |f|
        return true if File.mtime(f) > target_time
      end

      return false
    end

    def collect_sources
      return if @sources.empty?

      #@markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {})
      @markdown = Redcarpet::Markdown.new(HTMLWithPants, extensions = {})

      # Open all source files, parse and convert to json
      # Generating a new sequence of id's starting with one
      # This allows for easy renumbering of source files
      output = {}
      @sources.each_with_index do |f, idx|
        output[idx + 1] = read_parse_file(f, idx + 1)
      end

      # Encode output as a JSON file
      output = JSON.generate(output)

      # Add new lines between examples - this won't break examples as they
      # can't contain unescaped quotes
      output.gsub!('},"', %/},\n"/)

      # Overwrite output file
      File.open(@target_path, 'w') do |f|
        f.write(output)
      end

      # Report back
      puts "Collector: converted #{@target_path}"
    end

    def read_parse_file(filename, step)
      lang      = ''
      #step     = filename.scan(/\d/).join.to_i
      title     = ''
      chapter   = 'N'
      answer    = ''
      ok        = ''
      error     = ''
      text      = ''
      load_code = ''
      dashline_count = 0

      IO.readlines(filename).each do |line|
        if dashline_count < 2
          line.match('---') { |m|
            dashline_count += 1
          }

          line.match(/^lang:\s+(.*)/) { |m|
            lang = m[1].strip
          }

          line.match(/^title:\s+(.*)/) { |m|
            title = m[1].strip
          }

          line.match(/^class:(.*)chapmark$/) { |m|
            chapter = 'Y'
          }

          line.match(/^answer:\s+(.*)/) { |m|
            answer = m[1].strip
          }

          line.match(/^ok:\s+(.*)/) { |m|
            ok = m[1].strip
          }

          line.match(/^error:\s+(.*)/) { |m|
            error = m[1].strip
          }

          line.match(/^load:\s+(.*)/) { |m|
            load_code = m[1].strip
          }
        else
          text += line
        end
      end

      text.strip!
      return convert(lang, step, title, chapter, answer, ok, error, text, load_code)
    end

    def convert(lang, step, title, chapter, answer, ok, error, text, load_code)
      {
        lang: lang,
        title: title,
        chapter: chapter,
        answer: answer,
        ok: ok,
        error: error,
        text: @markdown.render(text),
        load_code: load_code
      }
    end
end

# Attach Collector to Middleman
class MiddlemanCollector < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super

    app.before do
      Collector.new('translations/en/try_ruby_*.md', 'source/try_ruby_en.json').collect
      Collector.new('translations/nl/try_ruby_*.md', 'source/try_ruby_nl.json').collect
      Collector.new('translations/es/try_ruby_*.md', 'source/try_ruby_es.json').collect
      Collector.new('translations/pt-br/try_ruby_*.md', 'source/try_ruby_pt-br.json').collect
      Collector.new('translations/ja/try_ruby_*.md', 'source/try_ruby_ja.json').collect
      Collector.new('translations/ru/try_ruby_*.md', 'source/try_ruby_ru.json').collect
      Collector.new('translations/ua/try_ruby_*.md', 'source/try_ruby_ua.json').collect
      Collector.new('translations/mk/try_ruby_*.md', 'source/try_ruby_mk.json').collect
      Collector.new('translations/zh/try_ruby_*.md', 'source/try_ruby_zh.json').collect
      Collector.new('translations/de/try_ruby_*.md', 'source/try_ruby_de.json').collect
      Collector.new('translations/tr/try_ruby_*.md', 'source/try_ruby_tr.json').collect
      Collector.new('translations/fr/try_ruby_*.md', 'source/try_ruby_fr.json').collect
      # TODO: add any new translations here

      true
    end
  end
end

::Middleman::Extensions.register(:collector, MiddlemanCollector)
