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

def the_cookie_of_step
  page.driver.cookies["tryruby_step"].value.gsub('%22', '').to_i
end

def wait_for_language_load(lang)
  wait_until("language load") { evaluate_script("document.documentElement.lang == #{lang.to_json}") }
end

def wait_for_updating_to_finish
  wait_until("updating") { evaluate_script("Opal.TryRuby.instance.updating == false") }
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

def get_execution_iteration
  evaluate_script("Opal.TryRuby.instance.execution_iteration")
end

def wait_for_execution(seconds = 5.0)
  iteration = get_execution_iteration
  yield
  wait_until("execution", seconds) { get_execution_iteration > iteration }
end

def wait_until(reason, seconds = 5.0)
  tries = (seconds * 10).to_i
  until yield
    if tries <= 0
      warn "** Timeout while waiting for #{reason} to finish"
      break
    end
    tries -= 1
    sleep 0.1
  end
end
