# await: *await*

require 'await'

class RubyEngine
  class CRubyWASI < RubyEngine
    REQUIRED_SCRIPTS = [
      {
        src: "https://cdn.jsdelivr.net/npm/ruby-wasm-wasi@0.1.2/dist/index.umd.js",
        integrity: "sha256-cPmKu5S3jkz5j0NnceapOfiWkzhBQqiBovOLjeYXwA0=",
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

    def run(source, writer)
      CRubyWASI.inject_scripts.await

      %x{
        const $WASI = window["WASI"].WASI;
        const $WasmFs = window["WasmFs"].WasmFs;
        const $RubyVM = window["ruby-wasm-wasi"].RubyVM;

        const wasmFs = new $WasmFs();
        const originalWriteSync = wasmFs.fs.writeSync.bind(wasmFs.fs);
        const textDecoder = new TextDecoder("utf-8");
        wasmFs.fs.writeSync = (fd, buffer, offset, length, position) => {
          const text = textDecoder.decode(buffer);
          if (fd == 1 || fd == 2) {
            #{writer.print_to_output(`text`, "")};
          }
          return originalWriteSync(fd, buffer, offset, length, position);
        };

        const vm = new $RubyVM();
        const wasi = new $WASI({
          bindings: { ...$WASI.defaultBindings, fs: wasmFs.fs },
        });
        const imports = { wasi_snapshot_preview1: wasi.wasiImport };
        vm.addToImports(imports);
        const wasmInstance = await WebAssembly.instantiate(#{wasm_module.await}, imports);
        await vm.setInstance(wasmInstance);
        wasi.setMemory(wasmInstance.exports.memory);
        vm.initialize();
      }

      yield `vm.eval(source).toString()`
    rescue JS::Error => err
      writer.log_error(err)
    end
  end
end
