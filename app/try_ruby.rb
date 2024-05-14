# await: true

require 'dependencies'
require 'editor'
require 'lesson'
require 'ruby_engine'

# The TryRuby application
class TryRuby
  INITIAL_TRY_CODE = <<~RUBY
    3.times do
      print 'Welcome '
    end
  RUBY
  INITIAL_TRY_RESULT = 'Welcome ' * 3

  DEFAULT_RUBY_ENGINE = "cruby-3.2.0"

  def self.start
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

    initialize_menu

    # Stop if this is not a TryRuby enabled page
    return unless title_element

    # Create editors
    @output = Editor.new(
      :output,
      lineNumbers: false,
      mode: 'text',
      readOnly: true,
      styleSelectedText: false,
    )

    @editor = Editor.new(
      :editor,
      lineNumbers: false,
      mode: 'ruby',
      tabMode: 'shift',
      tabSize: 2,
      theme: 'tomorrow-night-eighties',
    )

    # Bind run button
    $document.on(:click, '#btn_run') { do_run }

    # Is this the playground? If so, run code specific to the playground without
    # setting up the tutorial buttons.
    if title_element.inner_text.match(/playground/i)
      initialize_playground
    else
      initialize_tutorial
    end

    @execution_iteration = 0
  end

  def initialize_menu
    $document.on(:click, '[data-change-lang]') { |e| do_change_lang(e) }
  end

  def initialize_playground
    @playground = true

    code, selected_engine = get_state_from_url
    @editor.value = code || INITIAL_TRY_CODE.strip
    update_engine(selected_engine || DEFAULT_RUBY_ENGINE)

    $document.on(:click, '#btn_copy_url') { do_copy_url }
    $window.on(:hashchange) { on_hash_change }
    @editor.on(:change) { on_editor_change }

    create_engine_options
  end

  def initialize_tutorial
    @engine = RubyEngine::ENGINES[DEFAULT_RUBY_ENGINE]
    $document.on(:click, '#btn_copy') { do_copy }
    $document.on(:click, '#btn_next') { do_next }
    $document.on(:click, '#btn_back') { do_back }

    # Get language from cookie and start AJAX request to get content
    get_content_from_server(get_language)
  end

  def get_language
    # Pref stored in a cookie ?
    language = get_cookie('tryruby_language')

    # No cookie -> user browser settings to determine language
    unless language
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
      when 'de'
        language = 'de'
      when 'tr'
        language = 'tr'
      when 'fr'
        language = 'fr'
      else
        language = 'en'
      end

      # Set session cookie to store language
      set_cookie('tryruby_language', language)
    end

    # Update lang attribute
    $document.root.attr('lang', language)

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
      @items[k.to_i] = Lesson.new(k, v)
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

  def create_engine_options
    options = ''

    RubyEngine::ENGINES.each do |key, engine|
      options += "<option value=\"#{key}\" #{key == @engine.engine_id ? "selected" : ""}>#{engine.name}</option>\n"
    end

    engine_element = $document.at_css('#tryruby-engine')
    engine_element.inner_html = options
    $document.on(:change, '#tryruby-engine') {
      update_engine(engine_element.value)
      $window.history.replace(gen_url)
    }
  end

  def update_engine(engine)
    @engine = RubyEngine::ENGINES.fetch(engine) do
      STDERR.puts "Selected engine id '#{engine}' is unknown. Fallback to default engine '#{DEFAULT_RUBY_ENGINE}'."
      RubyEngine::ENGINES[DEFAULT_RUBY_ENGINE]
    end
  end

  def get_cookie(key)
    $document.cookies[key]
  end

  def set_cookie(key, value)
    $document.cookies[key] = value
  end

  def switch_to_last_used
    last_step = get_cookie('tryruby_step').to_i

    update_screen(get_step_content(last_step > 0 ? last_step : 1, '', ''))

    if last_step <= 1 && @editor
      @editor.value = INITIAL_TRY_CODE.strip
      @output.value = INITIAL_TRY_RESULT
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

    # Run
    eval_code source
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

  # Handle click language button
  def do_show_lang
    $document.at_css('#tryruby-lang-hider').toggle_class('hidden')
  end

  # Handle change language event
  def do_change_lang(event)
    language = event.target.data["change-lang"]

    $document.root['lang'] = language
    set_cookie('tryruby_language', language)
    get_content_from_server(language)
  end

  # Playground methods
  def get_state_from_url
    hash = $document.location.fragment.to_s.delete_prefix('#')
    hash = Browser::FormData.parse_query(hash.gsub('+', ' '))
    [hash['code'], hash['engine']]
  end

  def do_copy_url
    $$.navigator.clipboard.writeText(gen_url)
  end

  def gen_url
    prefix = $document.location.uri.split("#").first
    suffix = Browser::FormData.build_query(code: @editor.value, engine: @engine.engine_id).gsub("%20", "+")

    "#{prefix}##{suffix}"
  end

  def on_hash_change
    @editor.value, engine = get_state_from_url
    update_engine(engine) if engine
  end

  def on_editor_change
    $window.history.replace(gen_url)
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
    $document.at_css('#tryruby-answer')&.inner_html = item.answer
    @editor.value = item.saved_editor if @editor
    @output.value = item.saved_output if @output
    @current_copycode = get_code_fragment(item.text)

    # Set index to current item
    step = item.step.to_s
    $document.at_css("#tryruby-index").value  = step

    # Set session cookie to store progress
    set_cookie('tryruby_step', step)

    @editor.focus if @editor
    @updating = false
  end

  # Run the user's Ruby code
  # Code has already been compiled into js
  def eval_code(source)
    begin
      @engine.run_with_writer(source, self) do |retval|
        show_result(retval)
      end.__await__
      # Here, __await__ is a special Opal instruction
      # that can be kind of translated to how `await`
      # instruction in JavaScript works. In short, a
      # run function _may be_ an async function, which
      # means it returns a promise and we want to wait
      # until it's executed. This is so that we can
      # capture the exception and increase the counter
      # below.
    rescue Exception => err
      log_error(err)
      show_result(nil)
    end

    # This is for the tests, so that we can be sure
    # all execution steps are done, so we can read
    # the final result.
    @execution_iteration += 1
  end

  def show_result(retval)
    print_to_output(retval) if @output_buffer.length == 0 && retval && !retval.empty?

    # Do not check the answer if there is no regexp matcher
    if @current_item && @current_item.answer
      # Get last line of output
      value_to_check = @output_buffer.join.rstrip.lines.last

      # Check if output matches the defined answer regexp
      # and print status message
      print_to_output("\n")
      from = count_lines

      if value_to_check && !value_to_check.empty? && value_to_check.match(@current_item.answer)
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
    unless err.is_a? String
      err = @engine.exception_to_string(err)
    end

    from = count_lines
    print_to_output err
    @output.mark_error(from, count_lines)
  end

  def print_to_output(str, term = "\n")
    @output_buffer << str.to_s + term
    @output.value = @output_buffer.join
  end

  def output=(text)
    @output.value = text
  end
end

$window.on("dom:load") { TryRuby.start }
