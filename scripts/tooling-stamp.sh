#!/usr/bin/env bash
# Hash OCR/WARP tooling inputs; skip rebuild when scripts and sources are unchanged.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
INPUTS_FILE="${ROOT_DIR}/prebuilts/tooling.inputs"

tooling_stamp_hash() {
  (
    cd "${ROOT_DIR}"
    {
      git ls-tree HEAD \
        scripts/prepare-bundled-ocr.sh \
        scripts/compile-ocr-runtime.sh \
        scripts/compile-warp-runtime.sh
      git ls-tree -r HEAD sources/ocr-runtime sources/warp-runtime sources/warp-runtime-stubs
    } | awk '{print $3}' | sha256sum | awk '{print $1}'
  )
}

case "${1:-hash}" in
  hash)
    tooling_stamp_hash
    ;;
  write)
    mkdir -p "$(dirname "${INPUTS_FILE}")"
    tooling_stamp_hash > "${INPUTS_FILE}"
    echo "Wrote ${INPUTS_FILE}"
    ;;
  *)
    echo "usage: $0 [hash|write]" >&2
    exit 1
    ;;
esac
