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

# Universal
def code(type = :editor)
  evaluate_script("Opal.TryRuby.instance.#{type}.$value()")
end

def set_code(code)
  evaluate_script("Opal.TryRuby.instance.editor['$value='](#{code.to_json})")
end
