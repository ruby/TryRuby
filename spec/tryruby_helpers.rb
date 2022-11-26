require 'json'

# Tutorial
def languages
  Dir[__dir__ + "/../source/try_ruby_*.json"].map do |file|
    file.split("_").last.split(".").first
  end
end

def language_dataset(language)
  JSON.parse(File.read(__dir__ + "/../source/try_ruby_#{language}.json"))
end

def the_cookie_of_step_should_be(step)
  page.driver.cookies["tryruby_step"].value.should eq("%22#{step}%22")
end

# Playground
def select_engine(engine)
  find(%'#tryruby-engine option[value="#{engine}"]').select_option
end

# Universal
def code(type = :editor)
  evaluate_script("Opal.TryRuby.instance.#{type}.$value()")
end

def set_code(code)
  evaluate_script("Opal.TryRuby.instance.editor['$value='](#{code.to_json})")
end

def wait_for_execution(seconds = 5.0)
  tries = (seconds * 10).to_i
  while code(:output).chomp == ''
    break if tries <= 0
    tries -= 1
    sleep 0.1
  end
end
