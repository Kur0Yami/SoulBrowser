#!/usr/bin/env bash
# Hash soulamz build inputs; skip rebuild when sources and build script are unchanged.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
INPUTS_FILE="${ROOT_DIR}/bundled-warp/soulamz.inputs"

soulamz_stamp_hash() {
  (
    cd "${ROOT_DIR}"
    git ls-tree HEAD \
      native/soulamz/main.go \
      native/soulamz/go.mod \
      native/soulamz/go.sum \
      scripts/build-soulamz.sh \
      | awk '{print $3}' \
      | sha256sum | awk '{print $1}'
  )
}

case "${1:-hash}" in
  hash)
    soulamz_stamp_hash
    ;;
  write)
    mkdir -p "$(dirname "${INPUTS_FILE}")"
    soulamz_stamp_hash > "${INPUTS_FILE}"
    echo "Wrote ${INPUTS_FILE}"
    ;;
  *)
    echo "usage: $0 [hash|write]" >&2
    exit 1
    ;;
esac
