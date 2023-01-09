require 'opal/full'
require 'opal-parser'

class RubyEngine
  class Opal < RubyEngine
    def name
      "Opal #{::Opal::VERSION}"
    end

    def engine_id
      "opal"
    end

    def run(source)
      # Compile
      js_code = ::Opal.compile(source)

      # Bind puts and print methods.
      $stdout.write_proc = $stderr.write_proc = ->(str) do
        writer.print_to_output str, ""
      end

      # Run
      retval = nil
      error = nil

      retval = `eval(js_code)`
      yield(retval ? retval.to_s : '')
      $stdout.write_proc = $stderr.write_proc = nil
    end
  end
end
