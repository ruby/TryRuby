INITIAL_TRY_CODE = <<-RUBY
3.times do
  print 'Welcome '
end
RUBY

# Container for individual lessons
class TryRubyItem
  attr_reader   :lang, :step, :title, :chapter, :answer, :ok, :error, :text, :saved_editor, :saved_output
  attr_accessor :load_code

  def initialize(key, values)
    @lang         = values["lang"]
    @step         = key.to_i
    @title        = values["title"]
    @chapter      = values["chapter"]
    answer        = decode_uri(values["answer"])
    @answer       = answer && !answer.empty? ? Regexp.new(answer, 'mi') : nil
    @ok           = decode_uri(values["ok"])
    @error        = decode_uri(values["error"])
    @text         = decode_uri(values["text"])
    load_code     = values["load_code"]
    @load_code    = load_code && !load_code.empty? ? decode_uri(load_code) : nil
    @saved_editor = ''
    @saved_output = ''
  end

  def decode_uri(value)
    dec = `decodeURIComponent(value)`
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

  def mark_ok(line_index)
    `#@native.markText({line: line_index, ch: 0}, {line: line_index, ch: 99}, {className: "tryruby-output-green"})`
  end

  def mark_error(line_index)
    `#@native.markText({line: line_index, ch: 0}, {line: line_index, ch: 99}, {className: "tryruby-output-red"})`
  end
end

# The TryRuby application
class TryRuby

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
    return if Element.find('#tryruby-title').empty?

    # Create editors
    @output = Editor.new :output, lineNumbers: false, mode: 'text', readOnly: true, styleSelectedText: true
    @editor = Editor.new :editor, lineNumbers: false, mode: 'ruby', tabMode: 'shift', theme: 'tomorrow-night-eighties'

    # Bind run button
    Element.find('#btn_run').on(:click)   { do_run }

    # Is this the playground ? If so -> exit
    if Element.find('#tryruby-title').html.match(/playground/i)
      @editor.value = INITIAL_TRY_CODE.strip
      return
    end
    
    # Bind rest of buttons
    Element.find('#btn_copy').on(:click)  { do_copy }
    Element.find('#btn_next').on(:click)  { do_next }
    Element.find('#btn_back').on(:click)  { do_back }
    Element.find('#btn_clear').on(:click) { do_clear }
    Element.find('#tryruby-lang-toggle').on(:click) { do_show_lang }
    Element.find('#tryruby-lang-select').on(:change) { do_change_lang }

    # Get language from cookie and start AJAX request to get content
    get_content_from_server(get_language)
  end

  def get_language
    # Pref stored in a cookie ?
    language = get_cookie('tryruby_nl_language')

    # No cookie -> user browser settings to determine language
    if language.empty?
      # Only English for now. Uncomment lines to get browser setting
      browserlang = `navigator.languages ? navigator.languages[0] : (navigator.language || navigator.userLanguage || navigator.browserLanguage)`
      case browserlang[0..1]
      when 'nl'
        language = 'nl'
      when 'es'
        language = 'es'
      when 'pt-br'
        language = 'pt-br'
      else
        language = 'en'
      end

      # Set session cookie to store language
      set_cookie('tryruby_nl_language', language)
    end

    # Update language select list
    Element.find('#tryruby-lang-select').value = language

    language
  end

  # AJAX call to get lesson content. Update page when done
  def get_content_from_server(language)
    HTTP.get("/try_ruby_#{language}.json") do |response|
      # Handle ajax reponse
      if response.status_code == 200
        # Store items
        @items = {}
        response.json.each do |k, v|
          @items[k.to_i] = TryRubyItem.new(k, v)
        end
        @loaded = true

        # Update 'load code'
        update_load_prev

        # Fill index select-box
        create_index

        # If session cookie found goto last step and update page
        switch_to_last_used
      else
        puts "\nWhoops ! Loading the tutorial failed (status = #{response.status_code}).\nPlease reload the page."
      end
    end
  end

  # Add the 'load' Ruby code from the previous lessen to the current one
  # if load code starts with prev
  def update_load_prev
    prev_code = ''
    @items.each do |key, item|
      item.load_code = prev_code + item.load_code[4..999999] if item.load_code && !item.load_code.empty? && item.load_code[0..3] == 'prev'
      prev_code = item.load_code
    end
  end

  # Collect all lessons to create the lesson-index for displaying on the page
  def create_index
    index = ''
    @items.each do |key, item|
      index += "<option value=\"#{key}\">#{item.chapter == 'Y' ? '' : '&nbsp;&nbsp;&nbsp;'}#{item.title}</option>\n"
    end
  
    Element.find('#tryruby-index').html = index
    Element.find('#tryruby-index').on(:change) { do_goto }
  end

  def get_cookie(key)
    cookie = `document.cookie`
    return '' if !cookie || cookie.empty?
    value = cookie.match(Regexp.new("#{key}=(.*?)($|;|,(?! ))"))
    return value[1].strip if value
    ''
  end

  def set_cookie(key, value)
    `document.cookie = key + '=' + value`
  end

  def switch_to_last_used
    last_step = get_cookie('tryruby_nl_step').to_i

    update_screen(get_step_content(last_step > 0 ? last_step : 1, '', ''))

    if last_step <= 1
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
    new_value = Element.find('#tryruby-index').value.to_i
    update_screen(get_step_content(new_value, @editor.value, @output.value)) if new_value >= 0
  end

  # Handle click run button
  def do_run
    @output_buffer = []
    @output.value = ''
    @editor.focus
    source = @editor.value.strip
    return if source.empty?

    # Add additional code if available
    source = "#{@current_item.load_code}\n#{source}" if @loaded && @current_item && @current_item.load_code

    # Compile
    begin
      code = Opal.compile(source, :source_map_enabled => false)
    rescue => err
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
    Element.find('#tryruby-lang-hider').toggle_class('hidden')
  end

  # Handle change language event
  def do_change_lang
    language = Element.find('#tryruby-lang-select').value
    set_cookie('tryruby_nl_language', language)
    get_content_from_server(language)
  end

  def get_code_fragment(str)
    # Let jQuery find the first code fragment in tryruby-content
    code = Element.find('#tryruby-content code').html.strip
    return code.gsub("&lt;", "<").gsub("&gt;", ">").gsub("&amp;", "&")
  end

  def update_screen(item)
    return if !item
    @updating = true
    Element.find('#tryruby-title').html   = item.title
    Element.find('#tryruby-content').html = item.text
    Element.find('#tryruby-answer').html  = item.answer
    @editor.value                         = item.saved_editor
    @output.value                         = item.saved_output
    @current_copycode                     = get_code_fragment(item.text)

    # Set index to current item
    step = item.step.to_s
    Element.find("#tryruby-index").value  = step

    # Set session cookie to store progress
    set_cookie('tryruby_nl_step', step)

    @editor.focus
    @updating = false
  end

  # Run the user's Ruby code
  # Code has already been compiled into js
  def eval_code(js_code)
    retval = nil

    begin
      retval = `eval(js_code)`
      retval = retval ? retval.to_s : ''
      print_to_output(retval) if @output_buffer.length == 0 && !retval.empty?
    rescue => err
      retval = "#{err}"
      print_to_output(retval)
    end

    # Do not check the answer if there is no regexp matcher
    return if !@current_item || !@current_item.answer

    # Get last line of output
    value_to_check = @output_buffer.length > 0 && !@output_buffer.last.empty? ? @output_buffer.last.chomp : ''

    # Check if output matches the defined answer regexp
    # and print status message
    if !value_to_check.empty? && value_to_check.chomp.match(@current_item.answer)
      print_to_output("\n#{@current_item.ok}")
      @output.mark_ok(count_lines)
    else
      print_to_output("\n#{@current_item.error}")
      @output.mark_error(count_lines)
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
    print_to_output "#{err}\n\n#{`err.stack`}"
  end

  def print_to_output(str, term = "\n")
    @output_buffer << str.to_s + term
    @output.value = @output_buffer.join
  end
end

# Start TryRuby when document is loaded and ready
Document.ready? do
  # Bind puts and print methods. Make sure they return a string, not an array
  def $stdout.puts(*strs)
    strs.each { |str| TryRuby.instance.print_to_output str}
    strs.last
  end

  def $stdout.print(*strs)
    strs.each { |str| TryRuby.instance.print_to_output(str, "")}
    strs.last
  end

  # Start TryRuby
  TryRuby.instance
end
