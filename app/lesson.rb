# Container for individual lessons
class Lesson
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
