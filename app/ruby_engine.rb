# require 'ruby_engine/opal'
require 'ruby_engine/opal_webworker'
require 'ruby_engine/cruby_wasi'

class RubyEngine
  def run(source, instance)
    raise NotImplementedError
  end

  # When you update the engines, ensure that they are tested correctly.
  # Update the engine list also in spec/playground_spec.
  ENGINES = [
    # Opal.new,
    OpalWebWorker.new("1.7.1"),
    CRubyWASI.new(
      "https://cdn.jsdelivr.net/npm/ruby-head-wasm-wasi@0.5.0-2022-12-25-a/dist/ruby.wasm",
      "3.2.0"
    ),
    CRubyWASI.new(
      "https://cdn.jsdelivr.net/npm/ruby-head-wasm-wasi@next/dist/ruby.wasm",
      "3.3.0dev"
    ),
  ].each_with_object({}) do |engine, hash|
    hash[engine.engine_id] = engine
  end
end
