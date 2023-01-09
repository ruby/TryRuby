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
