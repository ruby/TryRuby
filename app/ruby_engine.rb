require 'ruby_engine/opal'
require 'ruby_engine/cruby_wasi'

class RubyEngine
  def run(source, instance)
    raise NotImplementedError
  end

  # When you update the engines, ensure that they are tested correctly.
  # Update the engine list also in spec/playground_spec.
  ENGINES = [
    Opal.new,
    CRubyWASI.new(
      "https://cdn.jsdelivr.net/npm/ruby-wasm-wasi@0.1.2/dist/ruby.wasm",
      "3.2.0dev"
    ),
  ].each_with_object({}) do |engine, hash|
    hash[engine.engine_id] = engine
  end
end
