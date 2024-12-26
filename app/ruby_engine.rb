# await: true

# require 'ruby_engine/opal'
require 'ruby_engine/opal_webworker'
require 'ruby_engine/cruby_wasi'

class RubyEngine
  def run(source)
    raise NotImplementedError
  end

  def exception_to_string(err)
    # Beautify the backtrace a little bit
    backtrace = err.backtrace
    backtrace = backtrace.select { |i| i.include? '<anonymous>' }
    backtrace = backtrace.map { |i| i.gsub(/.*(<anonymous>)/, '\1') }
    backtrace = ["(file)"] if backtrace.empty?
    err.set_backtrace(backtrace)
    err.full_message
  end

  def run_with_writer(source, writer, &block)
    @writer = writer
    @dots = 0
    run(source, &block).__await__
  end

  # Display a message while a block is being executed
  def loading(part = nil)
    # Debug option:
    # @writer.output = "*** Loading... #{"(#{part})" if part}"
    @dots += 1
    @writer.output = "*** Loading#{"." * @dots}"
    result = yield.__await__
    @writer.output = ""
    result
  end

  # When you update the engines, ensure that they are tested correctly.
  # Update the engine list also in spec/playground_spec.
  ENGINES = [
    # https://www.jsdelivr.com/package/npm/@ruby/3.2-wasm-wasi?tab=files&path=dist&version=2.4.1
    CRubyWASI.new(
      "https://cdn.jsdelivr.net/npm/@ruby/3.2-wasm-wasi@2.4.1/dist/ruby.wasm",
      "3.2.2"
    ),
    # https://www.jsdelivr.com/package/npm/@ruby/3.3-wasm-wasi?tab=files&path=dist&version=2.4.1
    CRubyWASI.new(
      "https://cdn.jsdelivr.net/npm/@ruby/3.3-wasm-wasi@2.4.1/dist/ruby.wasm",
      "3.3.0"
    ),
    # Opal.new,
    OpalWebWorker.new("1.7.1"),
  ].each_with_object({}) do |engine, hash|
    hash[engine.engine_id] = engine
  end
end
