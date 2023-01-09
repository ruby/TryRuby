# await: *await*, loading

require 'base64'
require 'json'

class RubyEngine
  class OpalWebWorker < RubyEngine
    class Worker
      def initialize(url)
        @native = `new Worker(#{url})`
      end

      def <<(message)
        `#@native.postMessage(message)`
      end

      def on_message(&block)
        `#@native.onmessage = #{block}`
      end

      def close
        `#@native.terminate()`
      end
    end

    class AwaitLogicWorker < Worker
      KERNEL = <<~JS
        onmessage = function(e) {
          var result;
          try {
            console.log("<<", e.data);
            switch (e.data[0]) {
              case "script":
                result = importScripts(e.data[1]);
                break;
              case "eval":
                result = eval(e.data[1]);
                break;
              case "nop":
                break;
              default:
                result = globalThis[e.data[0]](e.data[1]);
            }
            if(e.data[2]) postMessage(["ready", result]);
          }
          catch(err) {
            if(e.data[2]) postMessage(["ready", result]);
            if(globalThis.handleError) globalThis.handleError(err);
          }
        }
      JS

      def initialize(version)
        super("data:application/javascript;base64,#{Base64.strict_encode64(KERNEL)}")
        on_message(&method(:handle_message))
      end

      def send_await(msg, arg)
        @waiter = PromiseV2.new
        self << [msg, arg, true]
        @waiter.await
      end

      def handle_message(msg)
        `console.log(">>", msg.data)`

        msg, arg = `msg.data`
        case msg
        when :ready
          @waiter&.resolve(arg)
          @waiter = nil
        else
          public_send(:"handle_#{msg}", arg)
        end
      end
    end

    class OpalWorker < AwaitLogicWorker
      def initialize(version)
        @version = version
        super()
      end

      attr_writer :writer

      def upload_opal_await(engine)
        engine.loading("downloading ruby") { upload_script_await("opal") }
        engine.loading("downloading ruby extras") { upload_script_await("opal/full") }
        engine.loading("downloading ruby compiler") { upload_script_await("opal-parser") }
      end

      def upload_script_await(name)
        send_await(:script, "https://cdn.opalrb.com/opal/#@version/#{name}.min.js")
        send_await(:eval, "Opal.require(#{name.to_json}),null") unless name == :opal
      end

      def eval_ruby_await(ruby)
        send_await(:eval, "var out = eval(Opal.compile(#{ruby.to_json})); (out == null || out === Opal.nil) ? '' : out.$to_s();")
      end

      def prepare_stdio_await
        eval_ruby_await <<~RUBY
          $stdout.write_proc = $stderr.write_proc = ->(str) do
            `postMessage(["stdout", str])`
          end
        RUBY
      end

      def handle_stdout(str)
        @writer.print_to_output str, ""
      end

      def prepare_error_handler_await
        eval_ruby_await <<~RUBY
          error_handler = proc do |err|
            backtrace = err.backtrace
            backtrace = backtrace.select { |i| i.include? '<anonymous>' }
            backtrace = backtrace.map { |i| i.gsub(/.*(<anonymous>)/, '\\1') }
            backtrace = ["(file)"] if backtrace.empty?
            err.set_backtrace(backtrace)
            err = err.full_message

            `postMessage(["error", err])`
          end

          `globalThis.handleError = error_handler`
        RUBY
      end

      def handle_error(err)
        @writer.log_error err
      end
    end

    def initialize(version)
      @version = version
    end

    def name
      "Opal #{@version}"
    end

    def engine_id
      "opal-ww-#{@version}"
    end

    def run(source)
      worker = OpalWorker.new(@version)
      worker.writer = @writer

      worker.upload_opal_await(self)

      loading("preparing ruby") do
        worker.prepare_error_handler_await
        worker.prepare_stdio_await
      end

      retval = worker.eval_ruby_await(source)

      # Ensure the errors arrive
      worker.send_await(:nop)

      worker.close

      yield(retval)
    end
  end
end
