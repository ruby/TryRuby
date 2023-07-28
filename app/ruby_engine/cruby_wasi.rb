# await: *await*, loading

require 'await'

class RubyEngine
  class CRubyWASI < RubyEngine
    REQUIRED_SCRIPTS = [
      {
        src: "https://cdn.jsdelivr.net/npm/ruby-head-wasm-wasi@0.5.0/dist/index.umd.js",
        integrity: "sha256-EVJ2qiXD74E5qZpFm9MMNqOf5Buo+P2VQKiqOzOKGpg=",
        crossorigin: "anonymous"
      },
      {
        src: "https://cdn.jsdelivr.net/npm/@wasmer/wasmfs@0.12.0/lib/index.iife.js",
        integrity: "sha256-sOd4ekxVsN4PXhR+cn/4uNAxeQOJRcsaW5qalYfvkTw=",
        crossorigin: "anonymous"
      },
      {
        src: "https://cdn.jsdelivr.net/npm/@wasmer/wasi@0.12.0/lib/index.iife.js",
        integrity: "sha256-FslFp/Vq4bDf2GXu+9QyBEDLtEWO3fkMjpyOaJMHJT8=",
        crossorigin: "anonymous"
      }
    ]

    def initialize(ruby_wasm_url, version)
      @ruby_wasm_url = ruby_wasm_url
      @version = version
    end

    def name
      "CRuby #{@version}"
    end

    def engine_id
      "cruby-#{@version}"
    end

    # Below functions will be compiled as async functions
    def self.inject_scripts
      @injected ||= begin
        REQUIRED_SCRIPTS.map do |script|
          promise = PromiseV2.new
          script = $document.create_element("script", attrs: script)
          script.on("load") { promise.resolve }
          script.on("error") { promise.reject(StandardError.new("failed to load #{script[:src]}")) }
          $document.head << script
          promise
        end.each_await(&:itself)
        true
      end
    end

    def wasm_module
      @module ||= begin
        response = `fetch(#{@ruby_wasm_url})`.await
        buffer = `response.arrayBuffer()`.await
        `WebAssembly.compile(buffer)`.await
      end
    end

    def run(source)
      `var $WASI, $WasmFs, $RubyVM`
      wasmInstance, wasmModule, vm, wasi, imports = nil

      loading("downloading scripts") { CRubyWASI.inject_scripts.await }

      loading("early load") do
        `$WASI = window["WASI"].WASI`
        `$WasmFs = window["WasmFs"].WasmFs`
        `$RubyVM = window["ruby-wasm-wasi"].RubyVM`

        wasmFs = `new $WasmFs()`
        originalWriteSync = `wasmFs.fs.writeSync.bind(wasmFs.fs)`
        textDecoder = `new TextDecoder("utf-8")`
        %x{
          wasmFs.fs.writeSync = (fd, buffer, offset, length, position) => {
            if (fd == 1 || fd == 2) {
              const text = textDecoder.decode(buffer);
              #{@writer.print_to_output(`text`, "")};
            }
            return originalWriteSync(fd, buffer, offset, length, position);
          };
        }

        vm = `new $RubyVM()`
        wasi = `new $WASI({
          bindings: { ...$WASI.defaultBindings, fs: wasmFs.fs },
        })`
        imports = `{ wasi_snapshot_preview1: wasi.wasiImport }`
        `vm.addToImports(imports)`
      end

      loading("downloading ruby") do
        wasmModule = wasm_module.await
      end

      loading("instantiating") do
        wasmInstance = `WebAssembly.instantiate(wasmModule, imports)`.await
      end

      loading("initializing") do await
        `vm.setInstance(wasmInstance)`.await
        `wasi.setMemory(wasmInstance.exports.memory)`
        `vm.initialize()`
        set_external_encoding = "Encoding.default_external = Encoding::UTF_8"
        `vm.eval(set_external_encoding)`
      end

      yield `vm.eval(source).toString()`
    rescue JS::Error => err
      raise err
    end

    def exception_to_string(err)
      # "...: undefined method `reverse' for 40:Integer (NoMethodError)\n (Exception)\n"
      super(err).sub(/\s+\(Exception\)\s*\z/, '')
    end
  end
end
