class RubyEngine
  class CRubyWASI < RubyEngine
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

    def wasm_module
      return @module if @module
      %x{
        #{@module} = (async function() {
          const response = await fetch(#{@ruby_wasm_url});
          const buffer = await response.arrayBuffer();
          return await WebAssembly.compile(buffer);
        })();
      }
      @module
    end

    def run(source, writer)
      %x{
        async function instantiateVM() {
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
          const wasmInstance = await WebAssembly.instantiate(await #{wasm_module}, imports);
          await vm.setInstance(wasmInstance);
          wasi.setMemory(wasmInstance.exports.memory);
          vm.initialize();
          return vm;
        }

        instantiateVM()
        .then((vm) => { #{yield `vm.eval(source).toString()`} })
        .catch((err) => { #{writer.log_error(`err`)} })
      }
    end
  end
end
