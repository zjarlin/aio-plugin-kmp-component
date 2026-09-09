# AIO Kotlin Wasm Component 插件

这是使用 JetBrains Kotlin Toolchain 构建的 AIO Kotlin Multiplatform 插件。共享协议和 reducer 同时面向 JVM、wasmJs 与 wasmWasi 编译，WIT 适配层产出可在 AIO 当前进程中按租户装载、替换和销毁的 Wasm Component。

```bash
WIT_BINDGEN=/path/to/wit-bindgen ./scripts/generate-bindings.sh --check
./kotlin build -m model -p jvm -p wasmJs -p wasmWasi
./kotlin test -m model -p jvm
./scripts/build-component.sh
```

构建需要：

- Kotlin Toolchain `0.12.0-dev-4233`，由仓库 wrapper 和 SHA-256 固定。
- Kotlin `2.4.10`。
- Kotlin 官方 fork `Kotlin/wit-bindgen` 提交 `700f2db5e1d01f7bee8d756750c6f631171f520e`。
- `wasm-tools 1.240.0`。

最终 `dist/plugin.wasm` 只导出 AIO `definition` 与 `handle`，没有宿主导入。当前 Kotlin Component 支持仍是预览能力；业务模型不依赖宿主 UI，未来可直接替换 WIT 生成与封装实现。
