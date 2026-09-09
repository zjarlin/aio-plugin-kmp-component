#!/bin/sh

set -eu

WIT_BINDGEN=${WIT_BINDGEN:-wit-bindgen}
OUTPUT=component/src/site/addzero/aio/plugin/kmpcomponent/bindings

exec "$WIT_BINDGEN" kotlin \
  --kotlin-package-name site.addzero.aio.plugin.kmpcomponent.bindings \
  --kotlin-imports site.addzero.aio.plugin.kmpcomponent.component.PageRootFunctionsExportsImpl \
  --declaration-visibility internal \
  --cabi-realloc-freeing-strategy free-all \
  --out-dir "$OUTPUT" \
  "$@" \
  wit/page.wit
