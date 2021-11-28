require 'opal'
require 'opal/full'
require 'opal-parser'
require 'native'
require 'promise'
require 'browser/setup/full'
require 'browser/cookies'

# Container for individual lessons
class TryRubyItem
  attr_reader   :lang, :step, :title, :chapter, :answer, :ok, :error, :text, :saved_editor, :saved_output
  attr_accessor :load_code

  def initialize(key, values)
    @lang         = values["lang"]
    @step         = key.to_i
    @title        = values["title"]
    @chapter      = values["chapter"]
    answer        = values["answer"]
    @answer       = answer && !answer.empty? ? Regexp.new(answer, 'mi') : nil
    @ok           = values["ok"].split('<br/>')
    @error        = values["error"].split('<br/>')
    @text         = values["text"]
    load_code     = values["load_code"]
    @load_code    = load_code && !load_code.empty? ? load_code : nil
    @saved_editor = ''
    @saved_output = ''
  end

  def update_current_edit(current_editor_value, current_output_value)
    @saved_editor = current_editor_value
    @saved_output = current_output_value
  end
end

# Wrapper for CodeMirror objects
class Editor
  def initialize(dom_id, options)
    @native = `CodeMirror(document.getElementById(dom_id), #{options.to_n})`
  end

  def value=(str)
    `#@native.setValue(str)`
  end

  def value
    `#@native.getValue()`
  end

  def focus
    `#@native.focus()`
  end

  def mark_ok(line_from, line_to)
    `#@native.markText({line: line_from, ch: 0}, {line: line_to, ch: 99}, {className: "tryruby-output-green"})`
  end

  def mark_error(line_from, line_to)
    `#@native.markText({line: line_from, ch: 0}, {line: line_to, ch: 99}, {className: "tryruby-output-red"})`
  end

  def on(event, &block)
    `#@native.on(#{event}, #{block})`
  end
end

# The TryRuby application
class TryRuby
  INITIAL_TRY_CODE = <<~RUBY
    3.times do
      print 'Welcome '
    end
  RUBY

  def self.start
    # Bind puts and print methods.
    $stdout.write_proc = $stderr.write_proc = ->(str) do
      instance.print_to_output str, ""
    end

    instance
  end

  def self.instance
    @instance ||= self.new
  end

  def initialize
    @loaded           = false
    @items            = nil
    @step             = 1
    @output_buffer    = []
    @current_item     = nil
    @current_copycode = nil
    @updating         = false

    # Stop if this is not a TryRuby enabled page
    return unless title_element

    # Create editors
    @output = Editor.new :output, lineNumbers: false, mode: 'text', readOnly: true, styleSelectedText: true
    @editor = Editor.new :editor, lineNumbers: false, mode: 'ruby', tabMode: 'shift', tabSize: 2, theme: 'tomorrow-night-eighties'

    # Bind run button
    $document.on(:click, '#btn_run') { do_run }

    # Is this the playground? If so, run code specific to the playground without
    # setting up the tutorial buttons.
    if title_element.inner_text.match(/playground/i)
      initialize_playground
    else
      initialize_tutorial
    end
  end

  def initialize_playground
    @playground = true

    code = get_code_from_url
    @editor.value = code || INITIAL_TRY_CODE.strip

    $document.on(:click, '#btn_copy_url') { do_copy_url }
    $window.on(:hashchange) { on_hash_change }
    @editor.on(:change) { on_editor_change }
  end

  def initialize_tutorial
    $document.on(:click, '#btn_copy') { do_copy }
    $document.on(:click, '#btn_next') { do_next }
    $document.on(:click, '#btn_back') { do_back }
    $document.on(:click, '#btn_clear') { do_clear }
    $document.on(:click, '#tryruby-lang-toggle') { do_show_lang }
    $document.on(:change, '#tryruby-lang-select') { do_change_lang }

    # Get language from cookie and start AJAX request to get content
    get_content_from_server(get_language)
  end

  def get_language
    # Pref stored in a cookie ?
    language = get_cookie('tryruby_nl_language')

    # No cookie -> user browser settings to determine language
    if !language
      # Only English for now. Uncomment lines to get browser setting
      browserlang = `navigator.languages ? navigator.languages[0] : (navigator.language || navigator.userLanguage || navigator.browserLanguage)`
      case browserlang.downcase
      when 'nl'
        language = 'nl'
      when 'es'
        language = 'es'
      when 'pt-br', 'pt'
        language = 'pt-br'
      when 'ja'
        language = 'ja'
      when 'ru'
        language = 'ru'
      when 'ua'
        language = 'ua'
      when 'mk'
        language = 'mk'
      else
        language = 'en'
      end

      # Set session cookie to store language
      set_cookie('tryruby_nl_language', language)
    end

    # Update language select list
    $document.at_css('#tryruby-lang-select').value = language

    # Update lang attribute
    $document.at_css('html').attr('lang', language)

    language
  end

  # Ajax call to get lesson content and update the page.
  def get_content_from_server(language)
    Browser::HTTP.get("try_ruby_#{language}.json") do
      on :success do |response|
        TryRuby.instance.update_json(response.json)
      end

      on :failure do |response|
        puts "\nWhoops! Loading the tutorial failed " \
             "(status = #{response.status_code}).\n" \
             "Please reload the page."
      end
    end
  end

  def update_json(items)
    @items = {}
    items.each do |k, v|
      @items[k.to_i] = TryRubyItem.new(k, v)
    end
    @loaded = true

    update_load_prev

    # Fill index select-box
    create_index

    # If session cookie found, go to last step and update page
    switch_to_last_used
  end

  # Add the 'load' Ruby code from the previous lesson to the current one
  # if load code starts with 'prev'.
  def update_load_prev
    prev_code = ''

    @items.each do |key, item|
      if item.load_code && !item.load_code.empty? && item.load_code[0..3] == 'prev'
        item.load_code = prev_code + item.load_code[4..999999]
      end
      prev_code = item.load_code
    end
  end

  # Collect all lessons to create the lesson-index for displaying on the page
  def create_index
    index = ''

    @items.each do |key, item|
      value = item.chapter == 'Y' ? '' : '&nbsp;&nbsp;&nbsp;'
      index += "<option value=\"#{key}\">#{value}#{item.title}</option>\n"
    end

    $document.at_css('#tryruby-index').inner_html = index
    $document.on(:change, '#tryruby-index') { do_goto }
  end

  def get_cookie(key)
    Browser::Cookies.new(`document`)[key]
  end

  def set_cookie(key, value)
    Browser::Cookies.new(`document`)[key] = JSON.dump(value)
  end

  def switch_to_last_used
    last_step = get_cookie('tryruby_nl_step').to_i

    update_screen(get_step_content(last_step > 0 ? last_step : 1, '', ''))

    if last_step <= 1 && @editor
      @editor.value = INITIAL_TRY_CODE.strip
      do_run
    end
  end

  # Get requested TryRuby item
  def get_step_content(step, current_editor_value, current_output_value)
    return nil if !@loaded || step < 1 || !@items.has_key?(step)
    @items[@step].update_current_edit(current_editor_value, current_output_value) if @step > 0
    @step = step
    @current_item = @items[step]
    return @current_item
  end

  # Handle change index event
  def do_goto
    return if @updating

    new_value = $document.at_css('#tryruby-index').value.to_i
    if new_value >= 0
      update_screen(get_step_content(new_value, @editor.value, @output.value))
    end
  end

  # Handle click run button
  def do_run
    return unless @output

    @output_buffer = []
    @output.value = ''
    @editor.focus
    source = @editor.value.strip
    return unless source

    # Add additional code if available
    if @loaded && @current_item && @current_item.load_code
      source = "#{@current_item.load_code}\n#{source}"
    end

    # Compile
    begin
      code = Opal.compile(source)
    rescue Exception => err
      log_error err
    end

    # Run
    eval_code code
  end

  # Handle click copy button
  def do_copy
    @editor.value = @current_copycode
    @editor.focus
  end

  # Handle click next button
  def do_next
    update_screen(get_step_content(@step + 1, @editor.value, @output.value))
  end

  # Handle click back button
  def do_back
    update_screen(get_step_content(@step - 1, @editor.value, @output.value))
  end

  # Handle click clear button
  def do_clear
    @editor.value = ''
    @editor.focus
  end

  # Handle click language button
  def do_show_lang
    $document.at_css('#tryruby-lang-hider').toggle_class('hidden')
  end

  # Handle change language event
  def do_change_lang
    language = $document.at_css('#tryruby-lang-select').value
    $document["html"]["lang"] = language
    set_cookie('tryruby_nl_language', language)
    get_content_from_server(language)
  end

  # Playground methods
  def get_code_from_url
    hash = $$.decodeURIComponent($$[:location][:hash].gsub('+', ' '))

    hash['#code='.size..-1] if hash.start_with?('#code=')
  end

  def do_copy_url
    $$.navigator.clipboard.writeText(gen_url)
  end

  def gen_url
    prefix = $$[:document][:location].toString.split("#").first
    suffix = "#code=" + $$.encodeURIComponent(@editor.value)
    suffix = suffix.gsub("%20", "+")

    prefix + suffix
  end

  def on_hash_change
    @editor.value = get_code_from_url
  end

  def on_editor_change
    $$[:window][:history].replaceState(nil, '', gen_url)
  end
  # End of playground methods

  def get_code_fragment(str)
    $document
      .at_css('#tryruby-content code')
      &.inner_html
      .to_s
      .strip
      .gsub("&lt;", "<")
      .gsub("&gt;", ">")
      .gsub("&amp;", "&")
  end

  def title_element
    $document.at_css("#tryruby-title")
  end

  def update_screen(item)
    return if !item

    @updating = true
    title_element.inner_html = item.title
    $document.at_css('#tryruby-content').inner_html = item.text
    $document.at_css('#tryruby-answer').inner_html  = item.answer
    @editor.value = item.saved_editor if @editor
    @output.value = item.saved_output if @output
    @current_copycode = get_code_fragment(item.text)

    # Set index to current item
    step = item.step.to_s
    $document.at_css("#tryruby-index").value  = step

    # Set session cookie to store progress
    set_cookie('tryruby_nl_step', step)

    @editor.focus if @editor
    @updating = false
  end

  # Run the user's Ruby code
  # Code has already been compiled into js
  def eval_code(js_code)
    retval = nil
    error = nil

    begin
      retval = `eval(js_code)`
      retval = retval ? retval.to_s : ''
      print_to_output(retval) if @output_buffer.length == 0 && !retval.empty?
    rescue => err
      error = err
      log_error(err)
    end

    # Do not check the answer if there is no regexp matcher
    if @current_item && @current_item.answer
      # Get last line of output
      value_to_check = @output_buffer.length > 0 && !@output_buffer.last.empty? ? @output_buffer.last.chomp : ''

      # Check if output matches the defined answer regexp
      # and print status message
      print_to_output("\n")
      from = count_lines

      if !value_to_check.empty? && value_to_check.chomp.match(@current_item.answer)
        @current_item.ok.each do |line|
          print_to_output(line)
        end
        @output.mark_ok(from, count_lines)
      else
        @current_item.error.each do |line|
          print_to_output(line)
        end
        @output.mark_error(from, count_lines)
      end
    end
  end

  # Count the number of lines AND \n's in the output
  def count_lines
    linecount = 0

    @output_buffer.each do |line|
      linecount += line.scan(/\n/).count
    end

    linecount - 1
  end

  def log_error(err)
    # Beautify the backtrace a little bit
    backtrace = err.backtrace
    backtrace = backtrace.select { |i| i.include? '<anonymous>' }
    backtrace = backtrace.map { |i| i.gsub(/.*(<anonymous>)/, '\1') }
    backtrace = ["(file)"] if backtrace.empty?
    err.set_backtrace(backtrace)

    from = count_lines
    print_to_output err.full_message
    @output.mark_error(from, count_lines)
  end

  def print_to_output(str, term = "\n")
    @output_buffer << str.to_s + term
    @output.value = @output_buffer.join
  end
end

TryRuby.start
